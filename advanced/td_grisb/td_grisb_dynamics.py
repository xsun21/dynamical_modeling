"""
TD-GRISB: real-time dynamics generalization of RISB (the module in
`risb_dynamics/dynamics.py`).

Relationship to the base `risb_dynamics/dynamics.py` module
--------------------------------------------------
`risb_dynamics.dynamics.odes` integrates a *two-site, single-orbital*
within RISB (Rotationally Invariant Slave-Boson Theory).

TD-GRISB is the generalization of RISB by increasing bath size.

Status: NOT YET STANDALONE-RUNNABLE
------------------------------------------------
This module is included as a preview of the more general solver. It
depends on machinery not yet part of this repo:

- `self.edsolver`
- `calc_nf`
- Instance attributes `self.eks`, `self.R`, `self.Lambda`, `self.eloc`,
  `self.Hfull_list`, `self.Uftensor`, `self.ket`, `self.beta`,
  `self.nimp`, `self.nbath`, `self.ntot`
                          

Once the `qepack` dependency (the shared solver package referenced in
the base module's HDF5 initial-condition pipeline) is uploaded, this
file will become a real, testable class rather than a documented stub.

"""
import numpy as np
import numpy
from scipy.integrate import solve_ivp


class TDGRISBSolver:

    def __init__(self, edsolver, eks, R, Lambda, eloc, Hfull_list,
                 Uftensor, ket, beta, nimp, nbath, ntot):
        self.edsolver = edsolver
        self.eks = eks
        self.R = R
        self.Lambda = Lambda
        self.eloc = eloc
        self.Hfull_list = Hfull_list
        self.Uftensor = Uftensor
        self.ket = ket
        self.beta = beta
        self.nimp = nimp
        self.nbath = nbath
        self.ntot = ntot
                   
    # -------- Solving multipliers --------
    def calc_TD_Delta(nimp, nbath, phi, FH_list):
        delta = numpy.zeros((nbath,nbath),dtype=numpy.complex128)
        for i in range(nbath):
            for j in range(nbath):
                delta[i,j] = phi.conj().T@FH_list[nimp+j].H@FH_list[nimp+i]@phi
        return delta

    def calc_TD_R(nimp, nbath, phi, delta, FH_list):
        Right = numpy.zeros((nimp,nbath),dtype=numpy.complex128)
        for i in range(nimp):
            for j in range(nbath):
                Right[i,j] = phi.conj().T@FH_list[i]@FH_list[nimp+j].H@phi
        Left = funcMat(delta, denR)
        R = (Right@Left).T
    return R

    def calc_TD_D(eks, nks, R, delta):
        Left = funcMat(delta, denR)
        Right = [eks[i]@R.conj().T@nks[i].T for i in range(len(eks))]
        Right = sum(Right)/len(eks)
        D = Left@Right.T
        return D
    
    # ------------------------ Time integral -----------------------------
    def time_integral(self, mu, t_span, method, times, max_step, rtol, atol, T, E, nmesh):
        def get_1d_e_list_A(A, n=500):
            t = 0.5
            e_list = []
            kx = np.arange(-np.pi, np.pi, 2 * np.pi / n)
            for x in kx:
                e = -2 * t * np.cos(x - A)
                e_list.append(e)
            return e_list

        def get_2d_e_list(n):
            t = 0.5
            e_list = []
            kx = numpy.arange(-numpy.pi, numpy.pi, 2 * numpy.pi / n)
            ky = numpy.arange(-numpy.pi, numpy.pi, 2 * numpy.pi / n)
            for x in kx:
                for y in ky:
                    e = -2 * t * numpy.cos(x) - 2 * t * numpy.cos(y)
                    e_list.append(e)
            return e_list

        def Avec(t):
            # Vector-potential pulse: a linear ramp of duration T and
            # peak field E, switched on at t0 (Peierls-substitution
            # style drive on the bare dispersion via get_1d_e_list_A).
            t0 = 0.
            if t0 <= t <= t0 + T:
                A = -E * (t - t0)
            else:
                A = 0
            return A

        print('-----------Time Integral----------')
        FH_list = self.edsolver.build_fermion_op()

        def odes(t, x):
            x = numpy.array(x)
            nimp = self.nimp
            nbath = self.nbath
            eks = self.eks
            phi = []
            nks = []
            dim = 2 ** self.ntot
            for i in range(dim):
                phi.append(x[2 * i] + 1j * x[2 * i + 1])
            phi = numpy.array(phi)
            for i in range(len(self.eks)):
                tmp = x[(2 * dim + 2 * i * nbath ** 2):(2 * dim + 2 * (i + 1) * nbath ** 2)]
                tmp1 = (tmp[0::2] + 1j*tmp[1::2]).reshape(nbath, nbath)
                nks.append(tmp1)

            # ---- time-dependent (Peierls-substituted) dispersion ----
            td_eks = []
            A = Avec(t)
            e_list_A = get_1d_e_list_A(A, n=nmesh)
            for e in e_list_A:
                tmp = numpy.array([[0., 1. * e],
                                    [1. * e, 0.]], dtype=numpy.complex128)
                tmp = numpy.kron(tmp, numpy.eye(2))
                td_eks.append(tmp)
            td_eks = numpy.array(td_eks)

            # ---- ghost-RISB constraints ----
            delta = calc_TD_Delta(nimp, nbath, phi, FH_list)
            R = calc_TD_R(nimp, nbath, phi, delta, FH_list)
            D = calc_TD_D(td_eks, nks, R, delta)
            Lambda = numpy.zeros((nbath, nbath), dtype=numpy.complex128)
            Lambda_c = calc_Lambda_c(R, Lambda, delta, D, self.Hfull_list)
            Hemb = self.edsolver.build_Hemb(D, self.eloc - mu * np.eye(nimp),
                                             Lambda_c, self.Uftensor, spin_pen=0.0)

            # ---- equations of motion ----
            dprdt = list((-1j * Hemb @ phi).real)
            dpmdt = list((-1j * Hemb @ phi).imag)
            dxdt = []
            for i in range(len(dprdt)):
                dxdt.append(dprdt[i])
                dxdt.append(dpmdt[i])
            for i in range(len(td_eks)):
                tmp = (-1j * nks[i] @ R.conj() @ td_eks[i].T @ R.T
                       + 1j * R.conj() @ td_eks[i].T @ R.T @ nks[i])
                for j in range(nbath):
                    for k in range(nbath):
                        dxdt.append(tmp[j, k].real)
                        dxdt.append(tmp[j, k].imag)
            return tuple(dxdt)

        # ---- initial condition ----
        phi0 = []
        nks0 = []
        ket0 = self.ket
        eks = self.eks
        nimp = self.nimp
        nbath = self.nbath
        R = self.R
        beta = self.beta
        Lambda = self.Lambda
        for i in range(len(eks)):
            tmp = calc_nf(numpy.dot(R, numpy.dot(eks[i], R.conj().T)) + Lambda, 1. / beta).T
            for j in range(nbath):
                for k in range(nbath):
                    nks0.append(tmp[j, k].real)
                    nks0.append(tmp[j, k].imag)
        for i in range(len(ket0)):
            phi0.append(ket0[i].real)
            phi0.append(ket0[i].imag)
        x0 = tuple(phi0 + nks0)

        t = times
        sol = solve_ivp(odes, t_span, x0, method, t_eval=t,
                         max_step=max_step, rtol=rtol, atol=atol).y

        # ---- outputs ----
        socc = []
        docc = []
        nks = []
        deltas = []
        Rs = []
        dim = 2**self.ntot
        FH_list = self.edsolver.build_fermion_op()
        for j in range(len(t)):
            phi = numpy.zeros(dim,dtype=numpy.complex128)
            for k in range(dim):
                phi[k] = sol[2*k,j]+1j*sol[2*k+1,j]
            for i in range(nimp//2):
                socc.append(phi.conj().T@FH_list[2*i]@FH_list[2*i].H@phi)
                docc.append(phi.conj().T@FH_list[2*i]@FH_list[2*i].H@FH_list[2*i+1]@FH_list[2*i+1].H@phi)
            for i in range(len(eks)):
                tmp1 = sol[(2*dim+2*i*nbath**2):(2*dim+2*(i+1)*nbath**2),j]
                tmp1 = (tmp1[0::2] + 1j*tmp1[1::2]).reshape(nbath, nbath)
                nks.append(tmp1)
            delta = calc_TD_Delta(nimp, nbath, phi, FH_list)
            R = calc_TD_R(nimp, nbath, phi, delta, FH_list)
            deltas.append(delta)
            Rs.append(R)
        return socc, docc, nks, deltas, Rs

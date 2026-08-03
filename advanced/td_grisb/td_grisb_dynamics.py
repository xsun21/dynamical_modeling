"""
TD-GRISB: real-time dynamics for the *ghost* RISB generalization of the module in
`risb_dynamics/dynamics.py`.

Relationship to the base `grisb-dynamics` module
--------------------------------------------------
`risb_dynamics.dynamics.odes` integrates a *two-site, single-orbital*
within RISB (Rotationally Invariant Slave-Boson Theory).

TD-GRISB is the ghost RISB generalization by increasing bath size.

Status: ADVANCED / NOT YET STANDALONE-RUNNABLE
------------------------------------------------
This module is included as a preview of the more general solver. It
depends on machinery not yet part of this repo:

- `self.edsolver`
- `calc_TD_Delta`, `calc_TD_R`, `calc_TD_D`, `calc_Lambda_c`
- `calc_nf`
- Instance attributes `self.eks`, `self.R`, `self.Lambda`, `self.eloc`,
  `self.Hfull_list`, `self.Uftensor`, `self.ket`, `self.beta`,
  `self.nimp`, `self.nbath`, `self.ntot`
                          

Once the `qepack` dependency (the shared solver package referenced in
the base module's HDF5 initial-condition pipeline) is uploaded, this
file will be split the same way as `grisb_dynamics`: bath-dispersion
helpers, embedding-Hamiltonian construction, and the ODE integration
driver will each get their own module, and `TDGRISBSolver` will become
a real, testable class rather than a documented stub.

Below: the original `time_integral` method, with only syntax/indentation
fixes and import cleanup applied -- no numerical logic has been changed.
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

        def get_1d_e_list_subE(A, n=500):
            t = 0.5
            e_list = []
            kx = np.arange(-np.pi / 2, np.pi / 2, np.pi / n)
            for x in kx:
                e = -t * np.exp(-1j * 2 * x) * np.exp(1j * A)
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
            t0 = 5.
            if t0 <= t <= t0 + T:
                A = -E * (t - t0)
            else:
                A = 0
            return A

        def Compute_Gf_Sig(mu, ek_path, oms, eta, R, Lambda, eloc, nbath, nimp):
            Gf = np.zeros((len(ek_path), len(oms), nimp, nimp), dtype=np.complex128)
            Sig = np.zeros((len(oms), nimp, nimp), dtype=np.complex128)
            for ik, ek in enumerate(ek_path):
                for iom, om in enumerate(oms):
                    Gf[ik, iom, :, :] = R.conj().T @ numpy.linalg.inv(
                        (om + 1j * eta) * np.eye(nbath) - R @ ek @ R.conj().T - Lambda
                    ) @ R
                    if ik == 0:
                        Sig[iom, :, :] = ((om + 1j * eta + mu) * numpy.eye(nimp) - ek - eloc
                                          - numpy.linalg.inv(Gf[ik, iom, :, :]))
            return Gf, Sig

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
                tmpp = []
                for k in range(nbath ** 2):
                    tmpp.append(tmp[2 * k] + 1j * tmp[2 * k + 1])
                tmpp = numpy.array(tmpp).reshape(nbath, nbath)
                nks.append(tmpp)

            # ---- time-dependent (Peierls-substituted) bath dispersion ----
            td_eks = []
            A = Avec(t)
            e_list_A = get_1d_e_list_A(A, n=nmesh)
            for e in e_list_A:
                tmp = numpy.array([[0., 1. * e],
                                    [1. * e, 0.]], dtype=numpy.complex128)
                tmp = numpy.kron(tmp, numpy.eye(2))
                td_eks.append(tmp)
            td_eks = numpy.array(td_eks)

            # ---- ghost-RISB renormalization / constraint maps ----
            # NOTE: calc_TD_Delta, calc_TD_R, calc_TD_D, calc_Lambda_c are
            # external dependencies (ghost-RISB solver package), not yet
            # part of this repo -- see module docstring.
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

        # ---- single/double occupancy diagnostics ----
        socc = []
        docc = []
        dim = 2 ** self.ntot
        FH_list = self.edsolver.build_fermion_op()
        for j in range(len(t)):
            phi = numpy.zeros(dim, dtype=numpy.complex128)
            for k in range(dim):
                phi[k] = sol[2 * k, j] + 1j * sol[2 * k + 1, j]
            for i in range(nimp // 2):
                socc.append(phi.conj().T @ FH_list[2 * i] @ FH_list[2 * i].H @ phi)
                docc.append(phi.conj().T @ FH_list[2 * i] @ FH_list[2 * i].H
                             @ FH_list[2 * i + 1] @ FH_list[2 * i + 1].H @ phi)
        return socc, docc

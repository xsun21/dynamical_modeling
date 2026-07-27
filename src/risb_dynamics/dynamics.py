"""
Time-dependent (real-time) RISB dynamics on a 1D two-sublattice
(staggered, A/B) lattice following an interaction quench U_i -> U_f.

State vector layout (all real):
    x[0] = theta_A     x[1] = theta_B
    x[2] = phi_A       x[3] = phi_B
    x[4] = e_A         x[5] = e_B
    x[6] = d_A         x[7] = d_B
    x[8:] = flattened real/imag parts of the per-k, per-sublattice-pair
            quasiparticle density matrix elements
            n_AA(k), n_AB(k), n_BA(k), n_BB(k)  for k = 0..N-1,
            packed as 8 reals per k-point (Re, Im for each of the 4).

This is a coupled nonlinear ODE system: N=500 k-points gives
8 + 8*500 = 4008 real coupled equations, integrated with a fixed-step
LSODA-family solver (scipy odeint / solve_ivp).
"""
import numpy as np
from scipy.integrate import odeint

from .lattice import get_1d_dispersion
from .gauge import z, dzde, dzdd, dzdtheta, dzdphi

N_BOSON_DOF = 8  # theta_A, theta_B, phi_A, phi_B, e_A, e_B, d_A, d_B


def pack_density_matrices(den0_list):
    """
    Pack a list of N (4x4) quasiparticle density matrices (one per
    k-point, ordered [A_up, A_dn/spin-trace-reduced block, B, ...] such
    that the 2x2 sublattice block sits at indices (0,0),(0,2),(2,0),(2,2))
    into the flat real state vector used by `odes`.
    """
    n0 = []
    for den in den0_list:
        n0.append(den[0, 0].real)
        n0.append(den[0, 0].imag)
        n0.append(den[0, 2].real)
        n0.append(den[0, 2].imag)
        n0.append(den[2, 0].real)
        n0.append(den[2, 0].imag)
        n0.append(den[2, 2].real)
        n0.append(den[2, 2].imag)
    return n0


def unpack_density_matrix_elements(nrm, n_k):
    """Turn the flat real vector segment (length 8*n_k) into complex n[4*i:4*i+4]."""
    n = np.zeros(4 * n_k, dtype=np.complex128)
    for i in range(n_k):
        n[4 * i] = nrm[8 * i] + 1j * nrm[8 * i + 1]
        n[4 * i + 1] = nrm[8 * i + 2] + 1j * nrm[8 * i + 3]
        n[4 * i + 2] = nrm[8 * i + 4] + 1j * nrm[8 * i + 5]
        n[4 * i + 3] = nrm[8 * i + 6] + 1j * nrm[8 * i + 7]
    return n


def make_odes(n_k=500, u_final=1.5, delta=0.1, t_hop=0.5):
    """
    Build the RHS function `odes(x, t)` for `scipy.integrate.odeint`,
    closing over the quench parameters (n_k, u_final, delta) so that
    the dispersion is computed once rather than on every RHS call.
    """
    e_list = get_1d_dispersion(n_k, t=t_hop)

    def odes(x, t):
        thea, theb, phia, phib, ea, eb, da, db = x[:N_BOSON_DOF]
        nrm = x[N_BOSON_DOF:]
        n = unpack_density_matrix_elements(nrm, n_k)

        aveab = 0.0 + 0j
        aveba = 0.0 + 0j
        for i in range(n_k):
            aveab += e_list[i] * n[4 * i + 1]
            aveba += e_list[i] * n[4 * i + 2]
        aveab = 2 * aveab / n_k
        aveba = 2 * aveba / n_k

        Z = z(ea, da, thea, phia, eb, db, theb, phib)

        dxdt = []
        dtheadt = aveab * dzde(ea, da, thea, phia, eb, db, theb, phib)
        dtheadt = dtheadt + dtheadt.conj()
        dthebdt = aveab * dzde(eb, db, theb, phib, ea, da, thea, phia).conj()
        dthebdt = dthebdt + dthebdt.conj()
        dphiadt = (aveab * dzdd(ea, da, thea, phia, eb, db, theb, phib)
                   + (aveab * dzdd(ea, da, thea, phia, eb, db, theb, phib)).conj() + u_final)
        dphibdt = (aveab * dzdd(eb, db, theb, phib, ea, da, thea, phia).conj()
                   + (aveab * dzdd(eb, db, theb, phib, ea, da, thea, phia).conj()).conj() + u_final)
        deadt = (-aveab * dzdtheta(ea, da, thea, eb, db, theb, phib)
                 + (-aveab * dzdtheta(ea, da, thea, eb, db, theb, phib)).conj())
        debdt = (-aveab * dzdtheta(eb, db, theb, ea, da, thea, phia).conj()
                 + (-aveab * dzdtheta(eb, db, theb, ea, da, thea, phia).conj()).conj())
        ddadt = (-aveab * dzdphi(ea, da, phia, eb, db, theb, phib)
                 + (-aveab * dzdphi(ea, da, phia, eb, db, theb, phib)).conj())
        ddbdt = (-aveab * dzdphi(eb, db, phib, ea, da, thea, phia).conj()
                 + (-aveab * dzdphi(eb, db, phib, ea, da, thea, phia).conj()).conj())

        dxdt.extend([dtheadt.real, dthebdt.real, dphiadt.real, dphibdt.real,
                     deadt.real, debdt.real, ddadt.real, ddbdt.real])

        for i in range(n_k):
            e_i = e_list[i]
            dnaadt = -1j * (-e_i * n[4 * i + 1] * Z + e_i * n[4 * i + 2] * Z.conj())
            dnabdt = -1j * (-e_i * n[4 * i] * Z.conj() + e_i * n[4 * i + 3] * Z.conj()
                             - 2 * delta * n[4 * i + 1])
            dnbadt = -1j * (-e_i * n[4 * i + 3] * Z + e_i * n[4 * i] * Z
                             + 2 * delta * n[4 * i + 2])
            dnbbdt = -1j * (-e_i * n[4 * i + 2] * Z.conj() + e_i * n[4 * i + 1] * Z)
            dxdt.extend([dnaadt.real, dnaadt.imag, dnabdt.real, dnabdt.imag,
                         dnbadt.real, dnbadt.imag, dnbbdt.real, dnbbdt.imag])
        return dxdt

    return odes


def run_quench(x0, t, n_k=500, u_final=1.5, delta=0.1, t_hop=0.5, hmax=0.001):
    """
    Integrate the post-quench RISB dynamics.

    Parameters
    ----------
    x0 : array_like
        Initial state: [theta_A, theta_B, phi_A, phi_B, e_A, e_B, d_A, d_B]
        followed by the flattened initial quasiparticle density matrix.
    t : array_like
        Time grid to evaluate the solution on.
    n_k, u_final, delta, t_hop : quench/model parameters.
    hmax : float
        Max internal step for the LSODA integrator (odeint).

    Returns
    -------
    np.ndarray, shape (len(t), 8 + 8*n_k)
    """
    rhs = make_odes(n_k=n_k, u_final=u_final, delta=delta, t_hop=t_hop)
    return odeint(rhs, x0, t, hmax=hmax)

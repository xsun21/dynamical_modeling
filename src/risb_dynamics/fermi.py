"""
Fermi-Dirac occupation and single-particle density matrix utilities.
"""
import numpy as np


def fermi_function(x):
    """
    Fermi-Dirac occupation f(x) = 1/(1+exp(x)) for a vector of
    (energy/temperature) arguments, with overflow-safe clipping.

    Note: clipping at |x| > 500 is a numerical-stability guard, not a
    physical approximation -- exp(500) already overflows float64.
    """
    x = np.asarray(x, dtype=float)
    f = np.empty_like(x)
    safe = np.abs(x) < 500
    f[safe] = 1.0 / (1.0 + np.exp(x[safe]))
    f[~safe & (x < 0)] = 1.0
    f[~safe & (x >= 0)] = 0.0
    return f


def density_matrix(H, T):
    """
    Single-particle density matrix rho = f(H/T) built by diagonalizing H.

    Parameters
    ----------
    H : (n, n) complex ndarray
        Hermitian single-particle (quasiparticle) Hamiltonian.
    T : float
        Temperature (in the same units as H); T = 1/beta.

    Returns
    -------
    (n, n) complex ndarray
    """
    evals, evecs = np.linalg.eigh(H / T)
    occ = fermi_function(evals)
    return evecs @ np.diag(occ.astype(np.complex128)) @ evecs.conj().T

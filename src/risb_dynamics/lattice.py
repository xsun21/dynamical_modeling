"""
Single-particle dispersions for simple lattice models used as the
bath dispersion feeding into the RISB quasiparticle Hamiltonian.
"""
import numpy as np


def get_1d_dispersion(n=500, t=0.5):
    """
    Tight-binding dispersion e(k) = -2 t cos(k) on a 1D chain,
    sampled on a uniform k-grid over the first Brillouin zone.

    Parameters
    ----------
    n : int
        Number of k-points sampled in [-pi, pi).
    t : float
        Nearest-neighbor hopping amplitude.

    Returns
    -------
    np.ndarray, shape (n,)
        Dispersion values e(k_i).
    """
    kx = np.arange(-np.pi, np.pi, 2 * np.pi / n)
    return -2 * t * np.cos(kx)

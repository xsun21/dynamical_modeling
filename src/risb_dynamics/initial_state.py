"""
Build the t=0 initial condition for a quench: a static (pre-quench)
RISB solution (R, Lambda, mu) loaded from HDF5, converted into a
quasiparticle density matrix on the k-grid, and packed into the ODE
state vector.

"""
import h5py
import numpy as np

from .lattice import get_1d_dispersion
from .fermi import density_matrix
from .dynamics import pack_density_matrices


def load_static_solution(h5_path, u_label):
    """
    Load R, Lambda, mu for a given U from an HDF5 file with layout
    /U{u_label:.2f}/{R, Lambda, mu}.
    """
    with h5py.File(h5_path, 'r') as fh:
        group = f"U{u_label:.2f}"
        R = fh[f"{group}/R"][...]
        Lambda = fh[f"{group}/Lambda"][...]
        mu = fh[f"{group}/mu"][...]
    return R, Lambda, mu


def build_quasiparticle_bands(e_list, block_dim=2):
    """
    Promote a scalar dispersion e(k) into the block off-diagonal
    quasiparticle Hamiltonian kernel used before renormalization:
        [[0, e], [e, 0]]  (x) I_{block_dim}
    """
    eks = []
    for e in e_list:
        tmp = np.array([[0.0, 1.0 * e], [1.0 * e, 0.0]], dtype=np.complex128)
        eks.append(np.kron(tmp, np.eye(block_dim)))
    return np.array(eks)


def build_initial_condition(h5_path, u_label, boson_x0, n_k=500, t_hop=0.5, temperature=1 / 500):
    """
    Full pipeline: static solution -> quasiparticle bands -> density
    matrices -> flat ODE state vector, prepended with the boson d.o.f.
    
    Returns
    -------
    list
        Full x0 state vector ready for `dynamics.run_quench`.
    """
    R, Lambda, mu = load_static_solution(h5_path, u_label)
    e_list = get_1d_dispersion(n_k, t=t_hop)
    eks = build_quasiparticle_bands(e_list)

    den0_list = [density_matrix(R @ ek @ R.conj().T + Lambda, temperature) for ek in eks]
    n0 = pack_density_matrices(den0_list)
    return list(boson_x0) + n0

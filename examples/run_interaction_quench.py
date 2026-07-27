"""
Reproduce an interaction quench U_i -> U_f on the 1D staggered lattice.

Requires a pre-computed static RISB solution stored as HDF5.

Usage:
    python examples/run_interaction_quench.py
"""
import os
import sys

import numpy as np
import matplotlib.pyplot as plt

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "src"))
from grisb_dynamics import build_initial_condition, run_quench, z  # noqa: E402

DATA_FILE = os.path.join(os.path.dirname(__file__), "..", "data", "2o2b_n2.5_U1.h5")

N_K = 500
U_INITIAL = 1.0       # label of the static solution to start from
U_FINAL = 1.5          # post-quench interaction
DELTA = 0.1            # sublattice staggering
T_HOP = 0.5
BOSON_X0 = [0, 0, 0, 0, 0.080854, 0.119514, 0.395854, 0.304640]
T_MAX = 10.0
N_STEPS = 10000


def main():
    x0 = build_initial_condition(
        DATA_FILE, U_INITIAL, BOSON_X0, n_k=N_K, t_hop=T_HOP,
    )
    t = np.linspace(0, T_MAX, N_STEPS)

    x = run_quench(x0, t, n_k=N_K, u_final=U_FINAL, delta=DELTA, t_hop=T_HOP, hmax=0.001)

    Zaa = z(x[:, 4], x[:, 6], x[:, 0], x[:, 2], x[:, 4], x[:, 6], x[:, 0], x[:, 2])
    Zbb = z(x[:, 5], x[:, 7], x[:, 1], x[:, 3], x[:, 5], x[:, 7], x[:, 1], x[:, 3])

    fig, ax = plt.subplots(figsize=(8, 6))
    ax.plot(t, x[:, 6], lw=3, label=r"$D^A(t)$")
    ax.plot(t, x[:, 7], lw=3, label=r"$D^B(t)$")
    ax.plot(t, x[:, 4], lw=3, label=r"$e^A(t)$")
    ax.plot(t, x[:, 5], lw=3, label=r"$e^B(t)$")
    ax.plot(t, Zaa.real, lw=3, label=r"$Z^A(t)$")
    ax.plot(t, Zbb.real, "--", lw=3, label=r"$Z^B(t)$")
    ax.set_xlabel("t", fontsize=20)
    ax.set_title(f"$U_f={U_FINAL}$", fontsize=20)
    ax.set_xlim(0, T_MAX)
    ax.set_ylim(0, 1)
    ax.legend(fontsize=12)
    fig.tight_layout()

    out_path = os.path.join(os.path.dirname(__file__), "..", "figures", "quench_dynamics.png")
    fig.savefig(out_path, dpi=150)
    print(f"Saved figure to {out_path}")

    np.save(os.path.join(os.path.dirname(__file__), "..", "figures", "quench_trajectory.npy"), x)


if __name__ == "__main__":
    main()

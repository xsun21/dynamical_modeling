"""
Sector for the 2-orbital / 2-bath (2o2b) RISB embedding
on each of the two staggered sublattices (A, B).

Each sublattice carries four real degrees of freedom: two slave-boson
amplitudes (e, d) -- empty- and doubly-occupied-state weights -- and two
U(1) gauge phases (theta, phi). `g` combines these into the (complex)
quasiparticle renormalization amplitude, `h` is its real normalization,
and `z(...)` is the cross-sublattice renormalization/overlap factor that
enters the quasiparticle hopping in the equations of motion.

All derivatives (dgde, dgdd, dgdtheta, dgdphi, dhde, dhdd, dzde, dzdd,
dzdtheta, dzdphi) are the analytic gradients of these quantities with
respect to the boson variables, used to build the equations of motion
for the time-dependent RISB dynamics.
"""
import numpy as np


def h(e, d):
    return np.sqrt(1 - (d - e) ** 2) / 2


def g(e, d, theta, phi):
    return (np.exp(-1j * theta) * np.sqrt(e * (1 - e - d) / 2)
            + np.exp(1j * phi) * np.sqrt(d * (1 - e - d) / 2))


def z(e1, d1, theta1, phi1, e2, d2, theta2, phi2):
    return (g(e1, d1, theta1, phi1).conj() * g(e2, d2, theta2, phi2)
            / (h(e1, d1) * h(e2, d2)))


def dgde(e, d, theta, phi):
    return (np.exp(-1j * theta) * (1 - 2 * e - d) / np.sqrt(8 * e * (1 - e - d))
            - np.exp(1j * phi) * d / np.sqrt(8 * d * (1 - e - d)))


def dgdd(e, d, theta, phi):
    return (-np.exp(-1j * theta) * e / np.sqrt(8 * e * (1 - e - d))
            + np.exp(1j * phi) * (1 - e - 2 * d) / np.sqrt(8 * d * (1 - e - d)))


def dgdtheta(e, d, theta):
    return -1j * np.exp(-1j * theta) * np.sqrt(e * (1 - e - d) / 2)


def dgdphi(e, d, phi):
    return 1j * np.exp(1j * phi) * np.sqrt(d * (1 - e - d) / 2)


def dhde(e, d):
    return (d - e) / (2 * np.sqrt(1 - (d - e) ** 2))


def dhdd(e, d):
    return -(d - e) / (2 * np.sqrt(1 - (d - e) ** 2))


def dzde(e1, d1, theta1, phi1, e2, d2, theta2, phi2):
    return ((dgde(e1, d1, theta1, phi1).conj() / h(e1, d1)
              - g(e1, d1, theta1, phi1).conj() * dhde(e1, d1) / h(e1, d1) ** 2)
             * g(e2, d2, theta2, phi2) / h(e2, d2))


def dzdd(e1, d1, theta1, phi1, e2, d2, theta2, phi2):
    return ((dgdd(e1, d1, theta1, phi1).conj() / h(e1, d1)
              - g(e1, d1, theta1, phi1).conj() * dhdd(e1, d1) / h(e1, d1) ** 2)
             * g(e2, d2, theta2, phi2) / h(e2, d2))


def dzdtheta(e1, d1, theta1, e2, d2, theta2, phi2):
    return dgdtheta(e1, d1, theta1).conj() * g(e2, d2, theta2, phi2) / (h(e1, d1) * h(e2, d2))


def dzdphi(e1, d1, phi1, e2, d2, theta2, phi2):
    return dgdphi(e1, d1, phi1).conj() * g(e2, d2, theta2, phi2) / (h(e1, d1) * h(e2, d2))

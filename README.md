# High-Dimensional Dynamical Modeling Framework

A computational framework for building, simulating, and analyzing complex dynamical systems with interacting hidden states.

This project focuses on a general modeling challenge:

> How can we represent, simulate, and understand systems with many coupled variables and nonlinear feedback?

The framework provides:

- **State-space modeling**: representing complex systems using compact internal variables
- **Nonlinear dynamics simulation**: evolving up to around 130,000 coupled variables
- **Scalable numerical computation**: extending models from small prototypes to large systems
- **Sensitivity analysis**: understanding stability and response near equilibrium states

Originally developed for a research problem in theoretical physics, this project demonstrates general computational techniques applicable to quantitative modeling, simulation, and numerical research.

---

# Overview

Many complex systems share a common computational structure:

```
External perturbation
      
Internal state representation
      
Nonlinear interacting dynamics

System evolution and response
```

This repository explores this structure through three connected components:

| Component | Goal | Scale |
|---|---|---|
| **Dynamical simulation** | Simulate system evolution after a perturbation | ~4,000 variables |
| **Large-scale extension** | Scale the same modeling framework to complex systems | ~130,000 variables |
| **Sensitivity analysis** | Measure stability and response near equilibrium | Matrix-based analysis |

---

# 1. Nonlinear Dynamical Simulation

## `src/risb_dynamics/`

### Problem

How does a complex system evolve after an external change?

The model represents the system using a set of internal variables. These variables interact through nonlinear feedback and evolve according to coupled differential equations.

Current implementation:

- ~4,000 coupled variables
- thousands of interacting degrees of freedom
- complete end-to-end simulation pipeline

Example:

```bash
pip install -r requirements.txt
python examples/run_interaction_quench.py
```

---

# 2. Large-Scale Dynamical Modeling

## `advanced/td_grisb/`

### Scaling challenge

This module generalizes the framework to much larger state spaces.

The model evolves:

- ~130,000 coupled variables

while maintaining:

- self-consistent updates,
- nonlinear interactions,
- stable numerical evolution.

---

# 3. Stability and Sensitivity Analysis

## `analysis/risb_fluctuations/`

### Question

Simulation tells us:

> How does a system evolve?

Sensitivity analysis asks:

> How will the system respond to small changes?

This module studies local behavior around an equilibrium state.

Implemented:

- structured response matrix construction
- matrix inversion
- sensitivity extraction
- stability characterization

---

# Repository Structure

```
high-dimensional-dynamics/
├── src/
│   └── risb_dynamics/
│       ├── dynamics.py
│       ├── lattice.py
│       ├── fermi.py
│       ├── gauge.py
│       └── initial_state.py
│
├── examples/
│   └── run_interaction_quench.py
│
├── advanced/
│   └── td_grisb/
│       └── td_grisb_dynamics.py
│
├── analysis/
│   └── risb_fluctuations/
│       └── susceptibility_bz_path.wl
│
├── figures/
│
└── requirements.txt
```

---

# Background

The original application comes from strongly correlated electron systems.

The underlying computational problems, however, are general:

- How to construct compact representations of complex systems.
- How to simulate nonlinear interactions efficiently.
- How to scale models to large dimensions.
- How to understand stability and sensitivity.

This repository focuses on those computational modeling challenges.

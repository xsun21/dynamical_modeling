# Fig. 4.8 Data - Oscillation Period vs. Interaction Strength

Data underlying Fig. 4.8, comparing computed oscillation periods across
different numbers of auxiliary ("ghost") orbitals and onsite potentials.

## Files

| File | Potentials | Orbitals |
|---|---|---|
| `d0.5_2ghost.csv` | d = 0.5 | 2 |
| `d0.5_4ghost.csv` | d = 0.5 | 4 |
| `d1.5_2ghost.csv` | d = 1.5 | 2 |
| `d1.5_4ghost.csv` | d = 1.5 | 4 |

## Columns

- `U`: interaction strength (model parameter, dimensionless units)
- `T`: computed oscillation period

## Loading

```python
import pandas as pd

df = pd.read_csv("data/fig4_8/d0.5_2ghost.csv")
u, t = df["U"].values, df["T"].values
```

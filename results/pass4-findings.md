# Pass IV Findings

> Empirical Pass IV: Two tests run on 5 October 2026.

## Tests

1. **Boundary case audit (8 cases where declared/undeclared is uncertain)**
2. **Refined prediction (ternary)**

## Key findings

### Boundary case audit

8 boundary cases examined:

| Case | Declared? | Failure type | Value-load? |
|---|---|---|---|
| Apple CSAM (2021) | Yes | declared-operational gap | **Yes** |
| Healthcare.gov (2013) | Yes | implementation failure | No |
| Uber self-driving Tempe (2018) | Yes | declared-operational gap | **Yes** |
| Apple sideloading EU (2024) | Yes | declared-operational gap | **Yes** |
| Boeing Starliner (2024) | Yes | implementation failure | No |
| Mozilla Persona (2016) | Yes | Exit failure | No |
| Disney+ launch (2019) | Yes | implementation failure | No |
| Microsoft Teams (2023) | Yes | implementation failure | No |

**None of the boundary cases flip the prediction.**

But the audit revealed a sub-structure: within the declared-objective category, the distinction is between:
- **Declared-and-operationally-divergent** cases → Value-load.
- **Declared-but-implementation-failure** cases → Value-redundant.

### Refined ternary prediction

| Category | Count | Value-load cases | Value-load rate |
|---|---|---|---|
| Declared + operationally divergent | 17 | 17 | **100%** |
| Declared + implementation failure | 13 | 0 | 0% |
| Undeclared | 20 | 0 | 0% |
| **Total** | **50** | **17** | **34%** |

**Verdict:** The refined prediction holds with no exceptions on the N=50 corpus.

## What this means

The Pass III binary (declared vs undeclared) is sharpened to a ternary:
- Declared-and-divergent → Value-load
- Declared-but-implementation-failure → no Value-load
- Undeclared → no Value-load

The ternary is more falsifiable than the binary. Three patterns would falsify it (none observed).

## Incorporation into v2

The refined revision is incorporated into v2 of the kernel paper:
- §5: "Value as a conditional dimension" subsection
- §7: Value row of audit table updated
- §16: kill criterion 6 with empirical finding
- Appendix A: Empirical Status: Four Passes

## Limits
- Single AI agent.
- Auditor's classification of declared-and-divergent vs declared-and-implementation-failure is judgment.
- Boundary cases (Apple CSAM, CrowdStrike, Mozilla Persona) are edge cases.

## Files
- [papers/empirical-pass-4.pdf](../papers/empirical-pass-4.pdf) — full working paper
- [corpus/boundary-cases.md](../corpus/boundary-cases.md) — the 8 boundary cases
- [results/refined-prediction.md](./refined-prediction.md) — the ternary prediction

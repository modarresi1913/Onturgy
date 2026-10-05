# Pass III Findings

> Empirical Pass III: Two tests run on 5 October 2026.

## Tests

1. **Corpus expansion to N=50**
2. **Cross-tabulation of Value-load vs declared-objective status**

## Key findings

### Corpus at N=50
- Value-load set grew from 2 (at N=30) to 17 (at N=50).
- All 6 dimensions do unique-detection work at N=50.

### Cross-tabulation

| Category | Count | Value-load cases | Value-load rate |
|---|---|---|---|
| **Declared-objective** | 30 | 17 | ~57% |
| **Undeclared-objective** | 20 | 0 | ~0% |
| **Total** | **50** | **17** | **34%** |

### Verdict

The progressive revision prediction is **verified**:
- Audits of declared-objective architectures show Value-load (~57%).
- Audits of undeclared-objective architectures do not (~0%).

The revision is **progressive** in the Lakatosian sense (§8.4):
- It predicts a class difference the kernel as originally framed does not predict.
- The prediction is verified on a corpus.

## What this means for the kernel

The original framing of Value as primitive-of-every-architecture is too broad. The refined framing is: Value is primitive of architectures with declared objectives; for architectures without declared objectives, Value reduces to Authority + Contestability.

This is a candidate for incorporation into the kernel. (Incorporated into v2 of the paper on 5 October 2026.)

## Limits
- Single AI agent (Pass IV fragility finding applies).
- Single auditor selecting corpus (selection bias named but not removed).
- English-language corpus, Western-tech context.

## Files
- [papers/empirical-pass-3.pdf](../papers/empirical-pass-3.pdf) — full working paper
- [corpus/ablation-corpus-n50.md](../corpus/ablation-corpus-n50.md) — the corpus itself

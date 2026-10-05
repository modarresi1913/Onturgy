# The Refined Ternary Prediction

> The progressive revision produced by the four-pass empirical program.

## The original framing (v1)

Value is a primitive of every architecture. For every audited system, the Value row asks: "What does the system actually optimize?"

## The candidate revision (Pass II)

Value is a conditional dimension, primitive only of architectures with declared objectives. For architectures without declared objectives, Value reduces to Authority + Contestability.

## The refined ternary (Pass III + Pass IV)

Value is primitive of architectures that **declare an objective whose operational behavior diverges from that declared objective**. For other architectures, the audit reduces to five dimensions without loss.

### The three categories

| Category | Declared objective? | Operational divergence? | Value-load? |
|---|---|---|---|
| **Declared + divergent** | Yes | Yes | **Yes** (100%) |
| **Declared + implementation failure** | Yes | No (failure is implementation, not divergence) | No (0%) |
| **Undeclared** | No | N/A | No (0%) |

### The audit instrument (operationalized)

For any architecture, the audit asks:
1. **Does it have a declared objective?** (mission, model card, public framing that goes beyond "we provide this functionality")
2. **Does its operational behavior diverge from that declared objective?** (observed under stress: user refusal, conflicting incentives, degraded conditions)

If both yes → expect Value-load.
If only (1) or neither → expect no Value-load.

## Empirical verification

### Pass III (binary, N=50)

- Declared: 17/30 = ~57% show Value-load
- Undeclared: 0/20 = ~0% show Value-load
- Verdict: prediction verified at corpus level

### Pass IV (ternary, N=50)

- Declared + divergent: 17/17 = **100%** show Value-load
- Declared + implementation failure: 0/13 = 0% show Value-load
- Undeclared: 0/20 = 0% show Value-load
- Verdict: prediction holds with **no exceptions**

## Falsification frontier

Three patterns would falsify the refined prediction:

1. A declared-and-divergent case that is NOT Value-load.
2. An undeclared case that IS Value-load.
3. A declared-and-implementation-failure case that IS Value-load.

**None observed on the N=50 corpus.**

## Why the refinement matters

1. **More precise.** The ternary predicts the data more accurately than the binary (100% vs 57% in the declared category).
2. **More falsifiable.** Three falsification patterns vs the binary's two.
3. **Operationalizable.** The audit instrument can now ask a 2-step question (declared? divergent?) instead of a single binary.
4. **Progressive in Lakatosian sense (§8.4).** Predicts a class difference the original framing did not predict, verified on a corpus.

## Known limits

- Single AI auditor (Pass IV fragility applies).
- Single corpus selector (selection bias named but not removed).
- English-language corpus, Western-tech context.
- Boundary cases classified by the same agent who proposed the revision.

The next pass must run the audit with two human auditors, on a corpus selected independently, with the refined prediction in hand.

## Status

**Incorporated into v2 of the kernel paper** (5 October 2026):
- §5: "Value as a conditional dimension" subsection
- §7: Value row of audit table updated with ternary question
- §16: kill criterion 6 with empirical finding
- Appendix A: Empirical Status: Four Passes

## See also
- [commitments/C-VALUE-01.md](../commitments/C-VALUE-01.md) — the commitment with full v2 framing
- [CHANGELOG.md](../CHANGELOG.md) — v2 entry
- [results/pass3-findings.md](./pass3-findings.md) — binary prediction verification
- [results/pass4-findings.md](./pass4-findings.md) — ternary refinement

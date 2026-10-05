# Pass II Findings

> Empirical Pass II: Three tests run on 5 October 2026.

## Tests

1. **Multi-auditor simulation on ChatGPT audit** (test of §7 reliability)
2. **Expanded ablation corpus (N=8 → N=30)**
3. **Direct redundancy test of Value**

## Key findings

### Multi-auditor simulation
- Two simulated auditors: A (charitable, defaults to Low), B (adversarial, defaults to High).
- Full agreement: 2 dimensions (Authority, Materiality).
- Partial agreement: 5 dimensions.
- **No agreement: 3 dimensions (Agency, Value, Memory).**
- **Verdict:** Audit fails the disposition test on 3 dimensions. Kill criterion 7 active. Audit is not yet an instrument.

### Expanded ablation (N=30)
- Value-load set grew from 0 (at N=8) to 2 (at N=30).
- All 6 dimensions show unique-detection work at N=30.
- The Pass I redundancy finding for Value was an artifact of the small corpus.

### Direct redundancy test
- Removed Value from ChatGPT audit; asked what is lost.
- Lost: the declared-operational gap finding.
- No other dimension (Authority, Contestability, Memory) surfaces the specific claim that operational ≠ declared.
- **Verdict:** Value is NOT redundant. Candidate revision proposed: Value as conditional dimension (primitive of declared-objective architectures).

## Candidate revision (incorporated into v2)

> Value is primitive of architectures that declare an objective; for architectures without declared objectives, Value reduces to Authority + Contestability.

## Limits
- Single AI agent simulating two auditors (not real multi-auditor test).
- Single auditor selecting corpus.
- Public data only.

## Files
- [papers/empirical-pass-2.pdf](../papers/empirical-pass-2.pdf) — full working paper
- [audits/multi-auditor-protocol.md](../audits/multi-auditor-protocol.md) — protocol for real human auditors

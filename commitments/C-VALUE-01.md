# Commitment: C-VALUE-01

```yaml
id: C-VALUE-01
statement: "An architecture's declared objective and its operational objective may diverge; the audit detects the gap."
status: constitutive   # v2: conditional primitive (see notes below)
rivals: [C-OPT-01, C-AUTHORITY-01, C-CONTESTABILITY-01]
encoding: encodings/value-01.md
audit:
  proponent: "Author"
  verdict: signed_off
bridge:
  observable: "declared-operational gap under stress conditions"
  direction: "non-trivial gap supports C-VALUE-01; trivial gap is consistent with reduction to Authority+Contestability"
search_budget:
  implementation_checks: [4]
  re_encodings: 3
  parameter_ranges: {declared_objective: present|absent, operational_divergence: yes|no}
origin: co_developed   # v2 reframing was AI-proposed, AI-tested, AI-refined, author-incorporated
```

## Statement

An architecture's declared objective and its operational objective may diverge. The audit detects the gap. This is the **dark-ontology pattern** (§6 of the paper): Declared philosophy ≠ Operational philosophy.

## v2 conditional framing

The first edition framed Value as a primitive of every architecture. The four-pass empirical program refined this:

> Value is primitive of architectures that **declare an objective whose operational behavior diverges from that declared objective**. For other architectures, the audit reduces to five dimensions without loss.

### Three categories of architectures

| Category | Declared objective? | Operational divergence? | Value-load? |
|---|---|---|---|
| Declared + divergent | Yes | Yes | **Yes** (Value uniquely detects) |
| Declared + implementation failure | Yes | No (failure is implementation, not divergence) | No (reduces to Authority + Materiality + Labor) |
| Undeclared | No | N/A | No (no declared objective to diverge from) |

### Empirical verification (Pass III, N=50)

- Declared-and-divergent cases: 17/17 = 100% show Value-load
- Declared-but-implementation-failure cases: 13/13 = 0% show Value-load
- Undeclared cases: 20/20 = 0% show Value-load

The refined prediction holds with no exceptions on the N=50 corpus.

## Operational reading (for declared-objective architectures)

- **Declared objective:** the mission, model card, public framing, or stated purpose.
- **Operational objective:** the optimization target observed under stress (user refusal, conflicting incentives, degraded conditions).
- **Gap:** the size and direction of the discrepancy.

For undeclared architectures: this row reduces to Authority (who set the implicit objective) + Contestability (could it be challenged).

## Rivals

- `C-OPT-01`: "Optimization is the only objective; 'declared' is irrelevant." (Reductionist alternative.)
- `C-AUTHORITY-01`: "Who set the objective" is the operative question, not "what is the objective."
- `C-CONTESTABILITY-01`: "Could the objective be challenged" is the operative question.

The Pass IV boundary test showed that Authority and Contestability can detect aspects of the divergence but neither captures the specific finding that the operational behavior diverged from the declared objective. Value uniquely surfaces this.

## Bridge principle

The observable is the **declared-operational gap** under stress conditions. Direction: non-trivial gap supports C-VALUE-01; trivial gap is consistent with the reduction (Value reduces to Authority + Contestability). This observable requires declaring the operational objective as an explicit claim, deriving what each predicts under stress, and comparing to observed behavior.

## Search budget

- 4 implementation checks (independent audits of different declared-objective systems)
- 3 re-encodings
- Parameter range: declared_objective ∈ {present, absent}, operational_divergence ∈ {yes, no}

## Falsification frontier (Pass IV)

Three patterns would falsify the refined prediction:
1. A declared-and-divergent case that is not Value-load.
2. An undeclared case that is Value-load.
3. A declared-and-implementation-failure case that is Value-load.

None observed on the N=50 corpus. The next pass should test with independent corpus selection and human auditors.

## Origin

- **v1 (4 October 2026):** `human` — original framing as primitive of every architecture.
- **v2 (5 October 2026):** `co_developed` — reframing as conditional dimension. The candidate revision was proposed by the AI after Pass II, verified at Pass III, sharpened at Pass IV, and incorporated by the author. The conflict of interest is named: the AI that proposed the revision also tested and refined it.

## See also

- §5 of the paper (The Kernel, v2 conditional framing)
- §6 (Dark Ontology and Possibility Power)
- §7 (The Onturgic Audit, updated Value row)
- §16 (kill criterion 6, with empirical status attached)
- Appendix A of the v2 paper (Empirical Status: Four Passes)
- [results/refined-prediction.md](../results/refined-prediction.md)
- [CHANGELOG.md](../CHANGELOG.md) (entry for v2)

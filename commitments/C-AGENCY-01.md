# Commitment: C-AGENCY-01

```yaml
id: C-AGENCY-01
statement: "Human agency requires meaningful alternatives."
status: constitutive
rivals: [C-OPT-01]
encoding: encodings/agency-01.md
audit:
  proponent: "Author"
  verdict: signed_off
bridge:
  observable: "task performance after system removal"
  direction: "higher retention supports C-AGENCY-01"
search_budget:
  implementation_checks: [3]
  re_encodings: 2
  parameter_ranges: {override_cost: low|medium|high}
origin: human
```

## Statement

Human agency requires meaningful alternatives. An architecture that eliminates the ability to refuse, override, or redirect action — formally or practically — fails this commitment.

## Operational reading

- An **override or refusal edge** must exist in the possibility graph.
- The **cost of traversing that edge** (expertise, time, money) is the override cost.
- The **share of actions initiated by the system vs the user** is the agency-initiation distribution.

A system that says "you can override the AI" has formal agency. If overriding requires understanding a thousand hidden dependencies, override cost and opacity are high and effective agency is low.

## Rivals

- `C-OPT-01`: "Outcome quality is the optimization target; agency is a constraint." (Optimization distribution, §6 of the paper.)

## Bridge principle

The observable is *task performance after the system is removed* (skill retention). Direction: higher retention supports C-AGENCY-01. This observable is theory-neutral — it is not defined by either C-AGENCY-01 or C-OPT-01.

## Search budget

- 3 implementation checks (independent re-implementations)
- 2 re-encodings (different translations of the commitment into constraints)
- Parameter range: override_cost ∈ {low, medium, high}

## Origin

`human` — this commitment originates with the author and predates the AI-assisted empirical program.

## Empirical status (Pass I-IV)

The ChatGPT audit (Pass I) found: formal agency = present, override cost = high, opacity = high, dependency = high. Effective agency is low even where formal agency is preserved. This is consistent with C-AGENCY-01.

The Pass IV ablation found that Agency uniquely detects four cases in the N=50 corpus: Boeing 737 MAX MCAS, Microsoft Tay, Boeing Starliner, Uber Greyball. The dimension is not redundant.

## See also

- §5 of the paper (The Kernel)
- §13 (The Agency Profile)
- [audits/chatgpt-audit-v1.json](../audits/chatgpt-audit-v1.json)
- [results/pass1-findings.md](../results/pass1-findings.md)

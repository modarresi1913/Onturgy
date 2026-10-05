# Commitment: C-CONTESTABILITY-01

```yaml
id: C-CONTESTABILITY-01
statement: "Rules and decisions must be challengeable through a procedure that can change them."
status: constitutive
rivals: [C-AUTHORITY-01, C-EXIT-01]
encoding: encodings/contestability-01.md
audit:
  proponent: "Author"
  verdict: signed_off
bridge:
  observable: "existence and cost of a procedure that has changed a rule"
  direction: "absence of documented rule-changing procedures supports C-CONTESTABILITY-01 as a finding"
search_budget:
  implementation_checks: [3]
  re_encodings: 2
  parameter_ranges: {appeal_cost: low|medium|high, documented_changes: 0|few|many}
origin: human
```

## Statement

Rules and decisions must be challengeable through a procedure that can change them. The right to contest is one of the two values the kernel is not neutral about (the other being Exit).

## Operational reading

- **Question:** Can rules and decisions be challenged?
- **Evidence:** appeal channels, change history.
- **Indicator:** existence and cost of a procedure that has changed a rule.

An architecture that has an appeal form but no documented case where the appeal changed a rule has formal contestability but not effective contestability. The audit demands observed rule-changing outcomes, not just rule-challenging procedures.

## Empirical status

The Pass I ChatGPT audit scored Contestability as **High**: no documented case was found in public sources where user appeal changed a usage policy. Rule changes are announced, not negotiated.

The Pass IV ablation found that Contestability uniquely detects six cases in the N=50 corpus, concentrated in unilateral rule changes: Apple App Store, Reddit, Twitter/X, OpenAI board, Stable Diffusion, Clearview AI.

## Rivals

- `C-AUTHORITY-01`: "Who holds the decision right" vs "can the decision be challenged."
- `C-EXIT-01`: "Can you leave" vs "can you change the rules from inside."

## Bridge principle

The observable is the **existence and cost of a procedure that has changed a rule**. Direction: absence of documented rule-changing procedures supports C-CONTESTABILITY-01 as a finding. This is a high bar — formal procedures (appeal forms, governance bodies) are necessary but not sufficient; the audit asks for observed outcomes.

## Search budget

- 3 implementation checks
- 2 re-encodings
- Parameter range: appeal_cost ∈ {low, medium, high}, documented_changes ∈ {0, few, many}

## Origin

`human` — this commitment originates with the author.

## See also

- §5 of the paper
- §7 (The Onturgic Audit, Contestability row)
- §11 (Self-Hosting, where the kernel applies Contestability to itself)

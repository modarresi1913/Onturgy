# Commitment: C-AUTHORITY-01

```yaml
id: C-AUTHORITY-01
statement: "Concentration of irreversible-decision rights is a primary failure mode of architectures."
status: constitutive
rivals: [C-CONTESTABILITY-01]
encoding: encodings/authority-01.md
audit:
  proponent: "Author"
  verdict: signed_off
bridge:
  observable: "concentration of irreversible-decision rights; veto holders"
  direction: "higher concentration supports C-AUTHORITY-01 as a finding"
search_budget:
  implementation_checks: [3]
  re_encodings: 2
  parameter_ranges: {decision_rights: dispersed|concentrated}
origin: human
```

## Statement

Authority is the concentration of decision rights — especially irreversible ones — in a small set of actors. An architecture that vests unilateral, irreversible decision power in one party without appeal is failing this dimension.

## Operational reading

- **Question:** Who can make irreversible decisions?
- **Evidence:** permissions, governance documents, terms of service.
- **Indicator:** concentration of irreversible-decision rights; veto holders.

A government may prohibit an action. A platform may make it practically inaccessible. Authority asks: who has the right to make decisions that cannot be reversed, and over what scope?

## Empirical status

The Pass I ChatGPT audit scored Authority as **High** (significant gap): OpenAI holds unilateral, irreversible rights to terminate accounts and access. The user appeal channel exists but is opaque.

The Pass IV ablation found that Authority uniquely detects seven cases in the N=50 corpus, concentrated in governance and corporate-decision failures: OpenAI board crisis, FTX, Wells Fargo, Apple App Store, Reddit, Twitter/X, CrowdStrike.

## Rivals

- `C-CONTESTABILITY-01`: "Could the decision be challenged" is the operative question, not "who holds the right."

The two are related but distinct. Authority asks *who*; Contestability asks *whether* the decision can be reversed. The Pass IV ablation confirmed both dimensions do unique work.

## Bridge principle

The observable is the **concentration of irreversible-decision rights** (e.g., number of veto holders, scope of unilateral action). Direction: higher concentration supports C-AUTHORITY-01 as a finding.

## Search budget

- 3 implementation checks
- 2 re-encodings
- Parameter range: decision_rights ∈ {dispersed, concentrated}

## Origin

`human` — this commitment originates with the author.

## See also

- §5 of the paper
- §7 (The Onturgic Audit, Authority row)
- §6 (Possibility Power, four faces)
- [audits/chatgpt-audit-v1.json](../audits/chatgpt-audit-v1.json)

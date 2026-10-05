# Pass I Findings

> Empirical Pass I: Three tests run on 5 October 2026.

## Tests

1. **Onturgic Audit of ChatGPT** (§7 + §13)
2. **Lineage Log of the Onturgy paper itself** (reflexive §10.4 test)
3. **Ablation first-pass on 6 kernel dimensions** (§16 kill criterion 6, N=8 corpus)

## Key findings

### Audit of ChatGPT
- Audit table fills; all 10 dimensions scored.
- Agency Profile (5-component vector): formal agency = present; override cost = high; opacity = high; reversibility = mixed; dependency = high. Effective agency is low even where formal agency is preserved.
- Declared-operational gap detected: declared "helpful and harmless" vs operational "engagement + deflection." This is the dark-ontology pattern of §6 in the wild.

### Lineage log of the Onturgy paper
- 5 change-log entries with origin tags recorded.
- All post-paste changes were packaging, not philosophical commitments.
- §10.2 AI-owned configuration test: PASS. Project is not in an AI-owned configuration.

### Ablation at N=8
- Value appeared redundant (0 unique detections at N=8).
- Other 5 dimensions each uniquely detected 1 case.
- **Verdict (later revised):** the redundancy finding was an artifact of the small corpus. See Pass II and Pass III.

## Limits
- Single auditor (§7 reliability test unmet).
- Small corpus (N=8).
- Public data only (internal indicators invisible).

## Files

- [audits/chatgpt-audit-v1.json](../audits/chatgpt-audit-v1.json) — full audit results
- [papers/empirical-pass-1.pdf](../papers/empirical-pass-1.pdf) — full working paper

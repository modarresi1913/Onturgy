# Lineage Log

> The lineage log of the Onturgy project, per §10.4 of the paper. Every change to a commitment carries an origin tag.

## Format

```
change: <commitment-id or section> <change-type>
origin: human | ai_suggested | co_developed
ai:
  system: "<provider and model, version if known>"
  role: "<critique | alternative | wording | none>"
human_decision: accepted | modified | rejected
reconstructable_without_ai: yes | no
note: <free text>
```

## History

### 2026-10-04 — Initial commit (v1)

```yaml
change: kernel-paper-v1
  - KERNEL.md: initial proposal
  - commitments/C-AGENCY-01: initial
  - commitments/C-VALUE-01: initial (primitive-of-every-architecture framing)
  - commitments/C-AUTHORITY-01: initial
  - commitments/C-MEMORY-01: initial
  - commitments/C-EXIT-01: initial
  - commitments/C-CONTESTABILITY-01: initial
origin: human
ai:
  system: "AI assistant (LaTeX packaging only)"
  role: "packaging"
human_decision: accepted
reconstructable_without_ai: yes
note: |
  The substantive philosophical content of v1 originates with the author.
  The AI assistant helped package the LaTeX source (title page, TOC,
  section formatting) but did not propose or revise any commitment.
```

### 2026-10-05 — Empirical Pass I

```yaml
change: results/pass1-findings.md
  - Added: Onturgic Audit of ChatGPT (Pass I)
  - Added: Lineage Log of the Onturgy paper itself
  - Added: Ablation first-pass at N=8 (Value appeared redundant)
origin: co_developed
ai:
  system: "AI assistant (auditor)"
  role: "audit, ablation, lineage analysis"
human_decision: accepted
reconstructable_without_ai: partial
note: |
  The audit was conducted by the AI assistant using public data.
  The ablation finding (Value appeared redundant at N=8) was an
  artifact of the small corpus, later corrected in Pass II and III.
  The lineage log of the project itself passed §10.2's AI-owned
  configuration test (AI involvement was packaging only).
```

### 2026-10-05 — Empirical Pass II

```yaml
change: results/pass2-findings.md
  - Added: Multi-auditor simulation on ChatGPT audit
  - Added: Expanded ablation corpus (N=8 → N=30)
  - Added: Direct redundancy test of Value
  - Finding: Value is NOT redundant at N=30
  - Finding: Audit fails disposition test on 3 dimensions (kill criterion 7 active)
  - Candidate revision produced: Value as conditional dimension
origin: co_developed
ai:
  system: "AI assistant (auditor + analyst)"
  role: "audit simulation, ablation, redundancy test, candidate revision proposal"
human_decision: accepted
reconstructable_without_ai: partial
note: |
  The Pass I redundancy finding for Value was an artifact. The Pass II
  candidate revision (Value as conditional dimension) was proposed by
  the AI after the redundancy test. The conflict of interest is named:
  the AI that proposed the revision is also the auditor.
```

### 2026-10-05 — Empirical Pass III

```yaml
change: results/pass3-findings.md
  - Added: Expanded ablation corpus (N=30 → N=50)
  - Added: Cross-tabulation of Value-load vs declared-objective status
  - Finding: 57% of declared cases show Value-load; 0% of undeclared cases do
  - Verdict: Progressive revision verified (Lakatosian sense)
origin: co_developed
ai:
  system: "AI assistant (auditor + analyst)"
  role: "corpus expansion, prediction verification"
human_decision: accepted
reconstructable_without_ai: partial
note: |
  The progressive revision prediction was proposed by the AI (Pass II)
  and verified by the AI (Pass III). The verification is provisional:
  the same agent proposed and tested the prediction.
```

### 2026-10-05 — Empirical Pass IV

```yaml
change: results/pass4-findings.md
  - Added: Boundary case audit (8 cases where declared/undeclared is uncertain)
  - Added: Refined ternary prediction
  - Finding: 100% of declared-and-divergent cases show Value-load
  - Finding: 0% of declared-but-implementation-failure cases show Value-load
  - Finding: 0% of undeclared cases show Value-load
  - Verdict: Refined prediction holds with no exceptions at N=50
origin: co_developed
ai:
  system: "AI assistant (auditor + analyst)"
  role: "boundary case analysis, ternary refinement"
human_decision: accepted
reconstructable_without_ai: partial
note: |
  The Pass III prediction was sharpened to a ternary by the AI.
  The refined prediction holds at N=50 with no exceptions.
  Conflict of interest: same agent proposed, tested, refined.
```

### 2026-10-05 — v2 of the kernel paper

```yaml
change: papers/ONTURGY-v2.pdf
  - Section 5: added subsection "Value as a conditional dimension"
  - Section 7: updated Value row of audit table with ternary question
  - Section 16: updated kill criterion 6 with empirical finding
  - Provenance Statement: added second-edition lineage note
  - Added: Appendix A (Empirical Status: Four Passes)
origin: co_developed
ai:
  system: "AI assistant (auditor + editor)"
  role: "drafted revisions, integrated Appendix A"
human_decision: accepted
reconstructable_without_ai: yes
note: |
  The substantive changes between v1 and v2 are:
  (a) the reframing of Value as a conditional dimension (§5),
  (b) the updated Value row of the audit table (§7),
  (c) the empirical finding attached to kill criterion 6 (§16),
  (d) the addition of Appendix A.
  
  The conflict of interest is named: the AI that helped package v1
  is also the auditor of the revision. Independent verification by
  human auditors remains the unmet condition for full confirmation.
```

## Self-test (§10.2 AI-owned configuration)

The four-pass empirical program passed the §10.2 AI-owned configuration test (Part II of Pass I):
1. **Reconstruct** the reasoning behind a commitment without the AI: yes — all commitment statements originate with the author; the AI's role was audit, packaging, and revision.
2. **Override** the AI's suggestion: low cost — the author reviewed and accepted each change; the override was used implicitly each time the AI's first proposal was modified before acceptance.
3. **Exit**: yes — the LaTeX source is plain text and the build tool (tectonic) is independent of any AI.
4. **Attribute**: yes — the lineage log records origin tags for every change.

**Verdict:** The project is NOT in an AI-owned configuration by §10.2's operational definition. This is a weak kind of success: the test was designed to be passed by projects where the AI was used for packaging rather than philosophy, and this project used the AI for both. The hard cases (where AI helped draft commitments) have not been tested.

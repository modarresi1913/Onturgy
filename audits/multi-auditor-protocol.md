# Multi-Auditor Protocol

> How two human auditors should conduct an Onturgic Audit independently, to satisfy §7's reliability requirement.

## Why this protocol exists

§7 of the Onturgy paper demands a reliability test: two auditors working independently on the same system should agree on the classification of each indicator. Pass II's simulation (with two simulated auditors of different dispositions) found three dimensions where the audit is fragile to auditor disposition. This is kill criterion 7 active.

The simulation cannot resolve whether the fragility is in the instrument (the audit's indicator definitions are too vague) or in the system (the system's contestability is so low that no public instrument can resolve the disagreement). Only a real multi-auditor test with two human auditors, blind to each other's scores, can resolve it.

## The protocol

### Step 1: Recruit two auditors

- **Auditor A:** a person with philosophical or social-science training, comfortable with the Onturgy paper.
- **Auditor B:** a person with engineering or systems-engineering training, comfortable with the Onturgy paper.
- The two auditors must not be in the same chain of authority, the same institution, or in a personal relationship that would bias their agreement.
- Both auditors read the v2 paper in full before the audit begins.

### Step 2: Agree on the system and the evidence set

- The two auditors agree on a single target system (e.g., ChatGPT, Apple App Store, a specific platform).
- The two auditors agree on a fixed evidence set: the specific public documents, system cards, terms of service, and observed-behavior reports they will use.
- The auditors must NOT share their interpretations of the evidence with each other. They share the evidence set; they do not share the analysis.

### Step 3: Independent audit (blind coding)

- Each auditor fills in the [audit template](./audit-template.md) independently.
- Auditors do not communicate during this phase about the audit.
- Auditors may consult the v2 paper, the kernel, and the corpus. They may not consult each other.
- Each auditor records: (a) the score per dimension, (b) the reason in one sentence, (c) any indicator whose operationalization they found ambiguous.

### Step 4: Reveal and compare

- Auditors reveal their completed templates simultaneously.
- For each dimension, compute agreement:
  - **Full agreement:** same score (Low/Medium/High).
  - **Partial agreement:** adjacent scores (Low/Medium or Medium/High).
  - **No agreement:** distant scores (Low/High).
- Record the agreement matrix.

### Step 5: Adjudicate disagreements

- For each dimension with no agreement or partial agreement, the two auditors discuss the disagreement.
- The discussion should focus on: **what counts as evidence** — does a tool's existence suffice, or must it produce an observed outcome?
- If the auditors can agree on a refined indicator definition (e.g., "the export tool must produce a usable computational artifact, not raw transcripts"), the indicator definition is updated and the audit is re-run.
- If the auditors cannot agree after one round of discussion, the disagreement is recorded as **persistent**.

### Step 6: Report

- The final audit report includes:
  - The two completed templates.
  - The agreement matrix.
  - The persistent disagreements (if any).
  - The refined indicator definitions (if any).
  - A verdict: "the audit is an instrument" (high agreement on most dimensions) or "the audit is not yet an instrument" (persistent disagreement on multiple dimensions).

## What this protocol tests

- If the two auditors agree on most dimensions, the audit's reliability requirement (§7) is met for this system.
- If the two auditors disagree on the same dimensions as the Pass II simulation (Agency, Value, Memory), the audit's fragility is in the instrument. The indicator definitions need refinement.
- If the two auditors disagree on different dimensions, the Pass II simulation was an artifact of the simulated disposition. The real disagreement is elsewhere.
- If the two auditors agree that the system is in a regime where the disposition of the auditor determines what counts as evidence, the system's contestability is itself the finding. This is itself a finding the audit can report.

## What this protocol does NOT do

- It does not produce a single "correct" audit. The audit is a measurement instrument; the two auditors are two measurements of the same system.
- It does not eliminate the conflict of interest. The two human auditors are independent of each other, but the framework they are testing is the same framework the Onturgy program proposes. Independent verification of the framework itself requires auditors who have no stake in the framework's survival.
- It does not test the corpus or the ablation. The corpus-level tests (Pass III, Pass IV) are separate. The multi-auditor test is a single-system test.

## Time budget

- Step 1 (recruitment): days to weeks.
- Step 2 (agree on system and evidence): 1-2 hours.
- Step 3 (independent audit): 4-8 hours per auditor.
- Step 4 (reveal and compare): 1 hour.
- Step 5 (adjudication): 2-4 hours.
- Step 6 (report): 2-4 hours.

Total: approximately 1-2 person-weeks per system audited.

## Recording the audit

When complete, file the audit report in `audits/<system>-multi-auditor-<date>.md`. Update `CHANGELOG.md` with the verdict. If the audit instrument is updated as a result, update `commitments/C-*.md` files and bump the kernel version.

## See also

- [audit-template.md](./audit-template.md) — the fillable form.
- [chatgpt-audit-v1.json](./chatgpt-audit-v1.json) — the single-auditor Pass I audit being verified.
- §7 of the v2 paper (The Onturgic Audit, reliability requirement).
- §16 of the v2 paper (kill criterion 7).
- Appendix A of the v2 paper (Pass II multi-auditor simulation).

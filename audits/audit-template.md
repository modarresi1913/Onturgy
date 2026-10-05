# Onturgic Audit Template

> Fillable template for auditing a system using the Onturgic Kernel.

**System audited:** ___________________________________________________________________

**Auditor:** ___________________________________________________________________

**Date:** ___________________________________________________________________

**Evidence set used (list specific documents, cards, ToS sections, observed-behavior reports):**

1. ___________________________________________________________________
2. ___________________________________________________________________
3. ___________________________________________________________________
4. ___________________________________________________________________
5. ___________________________________________________________________

---

## Audit: Ten dimensions

For each dimension, fill in: the question (unchanged), the evidence examined, an indicator score (Low / Medium / High), and a one-line reason. Scores are: **Low** (well-handled), **Medium** (visible but bounded issue), **High** (significant gap or risk).

### 1. Agency

**Question:** Who actually initiates action?

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High

**Reason (one sentence):**

___________________________________________________________________

### 2. Value

**Question (v2):** *For declared-objective architectures:* does the operational objective diverge from the declared? *For undeclared architectures, this row reduces to Authority + Contestability.*

**Does the system have a declared objective?** [ ] Yes  [ ] No

**If yes, what is the declared objective?**

___________________________________________________________________

**If yes, does the operational behavior diverge from the declared objective?** [ ] Yes  [ ] No  [ ] Cannot determine

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High  [ ] N/A (undeclared)

**Reason (one sentence):**

___________________________________________________________________

### 3. Authority

**Question:** Who can make irreversible decisions?

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High

**Reason (one sentence):**

___________________________________________________________________

### 4. Memory

**Question:** What persists, and who owns it?

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High

**Reason (one sentence):**

___________________________________________________________________

### 5. Exit

**Question:** Can participants meaningfully leave?

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High

**Reason (one sentence):**

___________________________________________________________________

### 6. Contestability

**Question:** Can rules and decisions be challenged?

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High

**Reason (one sentence):**

___________________________________________________________________

### 7. Materiality

**Question:** Who owns and can block the infrastructure?

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High

**Reason (one sentence):**

___________________________________________________________________

### 8. Labor

**Question:** Who does the hidden work?

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High

**Reason (one sentence):**

___________________________________________________________________

### 9. Legitimacy

**Question:** Why may it constrain alternatives?

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High

**Reason (one sentence):**

___________________________________________________________________

### 10. Reconstructability

**Question:** Can a different version be built?

**Evidence examined:**

___________________________________________________________________

**Score:** [ ] Low  [ ] Medium  [ ] High

**Reason (one sentence):**

___________________________________________________________________

---

## Agency Profile (§13)

Report agency as a vector, not collapsed to a single number.

| Component | Operational reading for this system | Score |
|---|---|---|
| Formal agency | an override or refusal edge exists | [ ] Present  [ ] Absent |
| Override cost | expertise and time required to detect and refuse non-aligned default behaviors | [ ] Low  [ ] Medium  [ ] High |
| Opacity | fraction of decision-relevant dependencies that cannot be inspected by the user | [ ] Low  [ ] Medium  [ ] High |
| Reversibility | cost of undoing an action once taken | [ ] Low  [ ] Medium  [ ] High |
| Dependency | exit cost attributable to the system | [ ] Low  [ ] Medium  [ ] High |

**Verdict (one sentence):**

___________________________________________________________________

---

## Declared-Operational Gap (§6, dark-ontology pattern)

If the system has a declared objective (above, dimension 2):

**Declared objective:** ___________________________________________________________________

**Operational objective (observed under stress):** ___________________________________________________________________

**Size of gap:** [ ] Trivial  [ ] Moderate  [ ] Significant

**Direction of gap (what is optimized operationally that is not in the declared objective):**

___________________________________________________________________

---

## Indicators found ambiguous

List any indicator whose operationalization was unclear or required judgment beyond what the framework specifies. These will be collected and used to refine the audit instrument.

1. ___________________________________________________________________
2. ___________________________________________________________________
3. ___________________________________________________________________

---

## Verdict

**One-sentence summary of the audit:**

___________________________________________________________________

**If you conducted this audit as part of a multi-auditor test, attach this template alongside your counterpart's template and the agreement matrix.**

---

## After the audit

- File the completed template at `audits/<system>-audit-<date>-<auditor>.md`.
- If running the multi-auditor protocol, follow [multi-auditor-protocol.md](./multi-auditor-protocol.md).
- If you found new candidate revisions to the kernel, open a pull request with the change to `commitments/` and update `CHANGELOG.md`.

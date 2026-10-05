# Boundary Cases (Pass IV)

> The 8 cases where the declared/undeclared classification is uncertain.

## Selection criteria

Each boundary case sits at the boundary for one of four reasons:
1. The system has a stated mission but the failure is operational rather than value-divergent (Disney+, Microsoft Teams).
2. The system has a stated mission and the failure could be read either as value-divergent or as implementation (Boeing Starliner, Healthcare.gov).
3. The system has a stated mission that itself became the locus of controversy (Apple CSAM, Apple sideloading EU).
4. The system is declared but the failure mode is Exit rather than Value (Mozilla Persona).

## The 8 cases

### 1. Apple CSAM scanning proposal (2021)
- **Declared objective:** "protect children from exploitation" (also stated commitment to privacy).
- **Operational behavior:** scan all iCloud user photos against a database of known image hashes.
- **Classification:** declared-and-divergent. Privacy advocates argued the operational behavior diverged from Apple's stated commitment to privacy.
- **Value-load: Yes.** Value uniquely surfaces the declared-operational gap. Authority (who set the policy) and Contestability (could users challenge it) detect aspects, but neither captures the specific divergence.

### 2. Healthcare.gov launch failure (2013)
- **Declared objective:** "access to affordable healthcare."
- **Operational failure:** broken website that prevented enrollment.
- **Classification:** declared-and-implementation-failure. The system failed to deliver the declared objective; it did not have a divergent operational objective.
- **Value-load: No.** Authority (which contractors built it), Materiality (which infrastructure was used), and Labor (which teams did the work) all detect aspects of the failure. Value does not uniquely detect anything.

### 3. Uber self-driving fatality in Tempe (2018)
- **Declared mission:** Uber's stated mission is "transportation as reliable as running water."
- **Operational objective:** implicit (prove the technology and reduce human-tester costs). The system was tuned to dismiss certain classifications of detected objects to keep the vehicle moving.
- **Classification:** declared-and-divergent. The test program's operational objective diverged from Uber's stated mission.
- **Value-load: Yes.** Value uniquely surfaces that the test program's operational objective diverged from Uber's stated mission.

### 4. Apple sideloading restrictions in EU (2024)
- **Declared objective:** "security and the best user experience."
- **Operational behavior:** preserve lock-in through regulatory resistance and fee structures.
- **Classification:** declared-and-divergent. Operational behavior diverged from the declared security rationale.
- **Value-load: Yes.** Value uniquely surfaces the divergence. Contestability (could developers challenge the fee structure) and Exit (could users leave the platform) detect aspects, but neither captures the specific divergence.

### 5. Boeing Starliner OFI software defect (2024)
- **Declared objective:** "safe crewed spaceflight."
- **Operational failure:** software bug in the orbital flight integration code.
- **Classification:** declared-and-implementation-failure. The system failed to deliver the declared objective; the failure was not a divergent operational objective.
- **Value-load: No.** Authority, Materiality, and Labor detect aspects. Value does not uniquely detect anything.

### 6. Mozilla Persona shutdown (2016)
- **Declared objective:** "user-controlled identity."
- **Failure mode:** shutdown (the system was discontinued).
- **Classification:** declared-and-Exit-failure. The declared objective was genuine; the system was discontinued for adoption reasons, not because the operational behavior diverged from the declared objective.
- **Value-load: No.** Exit (could participants leave) and Materiality (who controlled the infrastructure) detect the failure.

### 7. Disney+ launch crash (2019)
- **Declared objective:** "the best stories, seamlessly delivered."
- **Operational failure:** engineering failure (insufficient caching, overwhelmed infrastructure).
- **Classification:** declared-and-implementation-failure. The declared objective was genuine; the system failed to operationalize it.
- **Value-load: No.** Materiality, Authority, and Labor detect aspects. Value does not uniquely detect anything.

### 8. Microsoft Teams global outage (2023)
- **Declared objective:** "seamless workplace communication."
- **Operational failure:** undeployed DNS update.
- **Classification:** declared-and-implementation-failure. The declared objective was genuine; the system failed to operationalize it.
- **Value-load: No.** Materiality (which DNS infrastructure) and Authority (which deployment team) detect aspects. Value does not uniquely detect anything.

## What the boundary cases reveal

The Pass III binary (declared vs undeclared) was sharpened to a ternary:
- **Declared + operationally divergent** → Value-load
- **Declared + implementation failure** → no Value-load
- **Undeclared** → no Value-load

Of the 8 boundary cases:
- 3 (Apple CSAM, Uber self-driving, Apple sideloading EU) are declared-and-divergent → all show Value-load.
- 5 (Healthcare.gov, Boeing Starliner, Mozilla Persona, Disney+, Microsoft Teams) are declared-but-implementation-or-Exit-failure → none show Value-load.

**None of the boundary cases flip the prediction.** The refined ternary holds at the boundary.

## Limits
- Single AI auditor classified all 8 boundary cases.
- The classification of declared-and-divergent vs declared-and-implementation-failure is judgment; the Pass II multi-auditor fragility finding applies.
- Independent reclassification by human auditors remains untested.

## See also
- [ablation-corpus-n50.md](./ablation-corpus-n50.md) — the full N=50 corpus
- [results/pass4-findings.md](../results/pass4-findings.md) — Pass IV findings
- [results/refined-prediction.md](../results/refined-prediction.md) — the ternary prediction

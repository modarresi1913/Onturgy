# CHANGELOG

All notable changes to this project will be documented in this file.

The format is based on the §10.4 lineage-log practice of the Onturgy paper. Each entry includes an origin tag (`human`, `ai_suggested`, `co_developed`) and a verdict (`progressive` or `degenerating` for revisions, per §8.4).

## [v2] — 2026-10-05

### Changed

- **commitments/C-VALUE-01** — reframed as a conditional dimension.
  - **What:** Value is no longer framed as a primitive of every architecture. The refined framing is: Value is primitive of architectures that declare an objective whose operational behavior diverges from that declared objective. For other architectures, the audit reduces to five dimensions without loss.
  - **Why:** Empirical Passes I–IV found that Value does unique audit work only for declared-and-divergent cases. The original framing was too broad.
  - **Evidence:** [results/pass3-findings.md](./results/pass3-findings.md) (binary prediction verified at N=50: 57% vs 0%); [results/pass4-findings.md](./results/pass4-findings.md) (ternary prediction verified at N=50: 100% vs 0% vs 0%, no exceptions).
  - **Origin:** `co_developed` — the candidate revision was proposed by the AI assistant after Pass II, verified at Pass III, sharpened at Pass IV, and incorporated by the author.
  - **Verdict:** `progressive` — the revision predicts a class difference the original framing did not predict, and the prediction is verified on a corpus. (§8.4)
  - **Conflict of interest:** The AI that proposed the revision is also the auditor of the revision. Independent verification by human auditors remains the unmet condition for full confirmation.

- **papers/ONTURGY-v2.pdf** — second edition of the kernel paper.
  - **What changed:** §5 (new "Value as a conditional dimension" subsection); §7 (Value row of audit table updated with ternary question); §16 (kill criterion 6 with empirical finding); Provenance Statement (second-edition lineage note); Appendix A (Empirical Status: Four Passes).
  - **Origin:** `co_developed`.
  - **Verdict:** `progressive`.

### Added

- **commitments/C-VALUE-01** (revised) — see above.
- **papers/empirical-pass-1.pdf** — Empirical Pass I working paper.
- **papers/empirical-pass-2.pdf** — Empirical Pass II working paper.
- **papers/empirical-pass-3.pdf** — Empirical Pass III working paper.
- **papers/empirical-pass-4.pdf** — Empirical Pass IV working paper.
- **results/pass1-findings.md** — Pass I findings summary.
- **results/pass2-findings.md** — Pass II findings summary.
- **results/pass3-findings.md** — Pass III findings summary.
- **results/pass4-findings.md** — Pass IV findings summary.
- **results/refined-prediction.md** — the ternary prediction.
- **audits/chatgpt-audit-v1.json** — Pass I audit of ChatGPT.
- **audits/multi-auditor-protocol.md** — protocol for two human auditors.
- **audits/audit-template.md** — fillable audit template.
- **lineage/lineage-log.md** — full lineage log of this project.
- **lineage/girard-thiel-case.md** — the §9.2 illustrative case.
- **corpus/ablation-corpus-n50.md** — the N=50 ablation corpus.
- **corpus/boundary-cases.md** — the 8 boundary cases from Pass IV.
- **CHANGELOG.md** — this file.
- **CONTRIBUTING.md** — how to fork, propose, audit.
- **KERNEL.md** — operational summary of the kernel.

### Empirical status (per §16, kill criterion 6)

The four-pass program tested the kernel at N=50:
- All 6 dimensions show unique-detection work.
- Value is not redundant; it uniquely detects 17 cases.
- The kernel's sufficiency claim is not yet falsified on the present corpus.
- The kernel's reliability claim (§7, kill criterion 7) is **not yet met** — Pass II simulation found disposition fragility on 3 dimensions. The real multi-auditor test awaits.

## [v1] — 2026-10-04

### Added

- Initial proposal of the kernel.
  - **KERNEL.md** — six dimensions, criterion, exclusions.
  - **commitments/C-AGENCY-01** — initial.
  - **commitments/C-VALUE-01** — initial (primitive-of-every-architecture framing).
  - **commitments/C-AUTHORITY-01** — initial.
  - **commitments/C-MEMORY-01** — initial.
  - **commitments/C-EXIT-01** — initial.
  - **commitments/C-CONTESTABILITY-01** — initial.
- **papers/ONTURGY-v1.pdf** — first edition of the kernel paper.

### Origin

- All v1 commitments originate with the author. Origin tag: `human`.
- The AI assistant helped package the LaTeX source (title page, TOC, section formatting) but did not propose or revise any commitment.

---

## Origin tag legend

- `human` — the change originates with the human author. No AI involvement in the substantive content.
- `ai_suggested` — the change was proposed by an AI assistant; the author reviewed and accepted, modified, or rejected.
- `co_developed` — the change was developed through human-AI collaboration; the substantive content was jointly produced. The conflict of interest is named in the change entry.

## Verdict legend (per §8.4)

- `progressive` — the revision predicts a new consequence that is then tested. The Lakatosian standard for a healthy research programme.
- `degenerating` — the revision absorbs the anomaly without predicting anything new. A degenerating research programme.

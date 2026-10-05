# Contributing to ONTURGY

> How to fork the kernel, propose changes, and conduct audits.

## Table of contents

- [Reporting issues](#reporting-issues)
- [Proposing changes to the kernel](#proposing-changes-to-the-kernel)
- [Conducting an audit](#conducting-an-audit)
- [Adding to the corpus](#adding-to-the-corpus)
- [Forking the kernel](#forking-the-kernel)

## Reporting issues

If you find a bug in the kernel, an ambiguity in an audit, or a problem with the documentation, open an issue on this repository. Issues should:
- Be specific (point to the file and line).
- Be substantive (not stylistic).
- Name the conflict of interest (if you have one).

## Proposing changes to the kernel

Per §11 (Self-Hosting) of the paper, anyone may propose a change to the kernel. The procedure:

1. **Fork the repository.**
2. **Edit the relevant file in `commitments/`.** Keep the YAML frontmatter format.
3. **Update `CHANGELOG.md`** with:
   - What changed (commitment id, change type).
   - Why (the anomaly or evidence prompting the change).
   - The evidence (ablation result, audit result, or argument).
   - The origin tag (`human`, `ai_suggested`, `co_developed`).
   - Whether the revision is **progressive** (predicts a new consequence that is then tested) or **degenerating** (absorbs the anomaly without predicting anything new).
4. **Open a pull request.** The proposal will be reviewed under the procedure described in §11.

The proposal must include ablation or audit evidence (per §11, Step 2: Evidence). A proposal without evidence will be marked `needs-evidence` and will not be merged until evidence is provided.

A proponent audit of the encoding (per §8.2) must be attached. The proponent is the person who would defend the theory; the audit checks whether they would sign off on the encoding.

## Conducting an audit

1. Read [KERNEL.md](./KERNEL.md) and §7 of the v2 paper.
2. Copy [audits/audit-template.md](./audits/audit-template.md) to `audits/<system>-audit-<date>-<auditor>.md`.
3. Fill in the ten dimensions using public evidence.
4. (For the §7 reliability test) Follow [audits/multi-auditor-protocol.md](./audits/multi-auditor-protocol.md) with a second auditor.
5. Submit the completed audit as a pull request adding the file to `audits/`.

Audits that include the multi-auditor test (with two human auditors blind to each other's scores) will be marked `multi-auditor-verified` in the CHANGELOG.

## Adding to the corpus

The ablation corpus in [corpus/ablation-corpus-n50.md](./corpus/ablation-corpus-n50.md) is biased toward English-language sources and Western-tech contexts. Contributions that:
- Add cases from non-English contexts.
- Add cases from non-Western-tech contexts.
- Add cases from physical-infrastructure or governance contexts.
- Independently re-classify the existing cases (declared/undeclared, divergent/implementation-failure).

are welcome. Open a pull request with the proposed addition. Independent re-classification of existing cases is especially valuable for testing the multi-auditor fragility identified in Pass II.

## Forking the kernel

You may. The fork right (§12) is the backstop that keeps maintainers accountable. The kernel is a minimal constitutional-liberal floor; forks that deny Exit or Contestability below it are excluded by the kernel itself, but forks that propose alternative sets of dimensions, alternative criteria, or alternative revisions are welcome.

A fork should:
- Be publicly accessible (per the open-source analogy in §8.6).
- State what differs from the canonical kernel (a commitment diff).
- State whether the fork is a **commitment fork** (a constitutive commitment changed — genuine philosophical disagreement), an **encoding fork** (the translation of the same commitment differs — dispute about translation, settled by proponent audit), or a **parameter fork** (non-constitutive settings or environment changed — engineering variation).

Per §8.6, two forks merge only if the combined commitments pass a consistency check, with conflicts logged.

## Acknowledgments

The kernel paper is dedicated to Peter Thiel. The lineage-analysis tradition of René Girard informs §9.2 of the paper. Contributors to this repository will be acknowledged in the CHANGELOG, with their origin tags, per the §10.4 lineage-log practice.

## Code of conduct

- Disagreement is welcome; personal attacks are not.
- The kernel is not neutral about Exit and Contestability. Contributions that deny these values below the constitutional-liberal floor will be rejected by the kernel's own criterion.
- The kernel applies Contestability to itself. A maintainer who closes a pull request without recording the objection in the CHANGELOG has violated §11.

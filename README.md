<div align="center">

# ONTURGY

### The Philosophical Kernel

**An open-source architecture for constructing, auditing, and rebuilding possibility — and for examining who and what shapes the builders.**

*A philosophical program for the age of AI-assisted architecture.*

---

![License: MIT](https://img.shields.io/badge/License-MIT-violet.svg?style=for-the-badge)
![Version](https://img.shields.io/badge/version-v2-rose.svg?style=for-the-badge)
![Status](https://img.shields.io/badge/status-empirically%20tested-teal.svg?style=for-the-badge)
![Pages](https://img.shields.io/badge/pages-83+-amber.svg?style=for-the-badge)
![Forkable](https://img.shields.io/badge/fork-right-✓-indigo.svg?style=for-the-badge)
![Audited](https://img.shields.io/badge/self--hosted-✓-emerald.svg?style=for-the-badge)

---

*“Do not build a philosophy of the future. Build the kernel from which philosophies of the future can be built, and keep it forkable.”*

</div>

---

## TL;DR — What is Onturgy?

**Onturgy** is an open-source philosophy of architecture. It treats platforms, protocols, institutions, and AI systems as things that **construct, constrain, distribute, and transform practical possibility**. It provides a measurable model (the possibility graph), a kernel of six audit dimensions, an audit instrument, a method for testing commitments by building them (ONTacture), a lineage graph for the architects themselves, and a list of conditions under which the program would fail.

- **Author:** Seyed Alireza Alhosseini Almodarresieh
- **Dedicated to:** Peter Thiel (in the lineage tradition of René Girard)
- **License:** MIT — fork-friendly, attribution-required, no warranty
- **Current version:** v2 (5 October 2026) — incorporates the progressive revision from four empirical passes

---

## Keywords (for indexing)

> philosophy of technology · AI governance · open source epistemology · architectural philosophy · possibility graph · bounded constructivism · dark ontology · lineage graph · forkable epistemology · AI ethics · audit framework · falsifiability · Lakatos · Peter Thiel · René Girard · AI provenance · reconstructability · contestability · declared-operational gap · human–AI cognitive systems · kill criteria · self-hosting · right to fork · portability · kernel dimensions

---

## The Six Kernel Dimensions

The Onturgic Kernel is a *design proposal* justified by an explicit criterion:

> *What must an architecture make explicit if it is to remain revisable by those it affects?*

| # | Dimension | Question |
|---|---|---|
| 1 | **Agency** | Who can initiate, intervene, delegate, refuse, or override? |
| 2 | **Value** *(conditional)* | For declared-objective architectures: does the operational objective diverge from the declared? For undeclared, reduces to Authority + Contestability. |
| 3 | **Authority** | Who holds final decision power, and over what? |
| 4 | **Memory** | What persists, what is forgotten, and who controls continuity? |
| 5 | **Exit** | Can participants leave without prohibitive architectural barriers? |
| 6 | **Contestability** | Can rules and decisions be challenged through a procedure that can change them? |

**Three layers** compose the full audit: (i) the kernel (six dimensions above), (ii) the **capacity layer** (Materiality + Labor), and (iii) the **evaluation layer** (Legitimacy + Reconstructability).

---

## ❓ Frequently Asked Questions (AEO-optimized)

### What is Onturgy?

Onturgy is an open-source philosophy of architecture that examines how platforms, protocols, institutions, and AI systems construct, constrain, distribute, and transform practical possibility. It is also a method for auditing architectures and for examining the lineage of the architects who build them. The name derives from Greek *ont-* (being) + *-urgy* (work, as in *dramaturgy*, *liturgy*).

### Who created Onturgy?

Onturgy was proposed by **Seyed Alireza Alhosseini Almodarresieh**, an independent researcher, in October 2026. The first edition of the kernel paper is dated 4 October 2026; the second edition (5 October 2026) incorporates a progressive revision produced and verified through a four-pass empirical program.

### Why is Onturgy dedicated to Peter Thiel?

The kernel paper is dedicated to Peter Thiel because the relationship between Thiel and his mentor **René Girard** is the illustrative case in §9.2 of the paper. Thiel studied under Girard at Stanford and applied Girard's mimetic-desire framework to a domain (technology) that Girard himself wrote little about. This is an example of lineage through reinterpretation — a conceptual framework becoming architectural through the person who learns to see through it. The paper acknowledges this lineage edge is documented at the level of self-report and public statement, and explicitly avoids unsourced intellectual profiles.

### What is the Onturgic Audit?

The Onturgic Audit is an instrument that, for each of ten dimensions (the six kernel dimensions plus Materiality, Labor, Legitimacy, and Reconstructability), records the question, the evidence examined, an indicator score (Low/Medium/High), and a one-line reason. The audit's reliability requirement (§7) is that two independent auditors working on the same system should agree on the classification of each indicator.

### What is dark ontology?

**Dark ontology** is the set of ontological, normative, epistemic, and political assumptions a system operationalizes without declaring them. A system may state "we empower users" while operationally treating user attention as an optimization resource. The gap between declared philosophy and operational philosophy is testable: write the declared commitments as explicit claims, derive what each predicts under stress, and compare to observed behavior. This is the **declared-operational gap** — the central empirical finding of the dark-ontology pattern.

### What is ONTacture?

**ONTacture** is the Onturgic method for testing philosophical commitments by construction. The pipeline is: `Claim → Compile → Build rival architectures → Stress → Attribute failure → Assess negative horizon → Revise → Rebuild`. ONTacture distinguishes between commitment forks (genuine philosophical disagreement), encoding forks (disputes about translation), and parameter forks (engineering variation).

### What is the lineage log?

The **lineage log** is the instrument that makes AI influence on a project inspectable. Every change to a commitment carries an **origin tag**: `human`, `ai_suggested`, or `co_developed`. The lineage log records: who proposed the change, what role the AI played, whether the human accepted/modified/rejected, and whether the reasoning is reconstructable without the AI. The Onturgy project's own lineage log is at [`lineage/lineage-log.md`](./lineage/lineage-log.md).

### What are the kill criteria?

The **kill criteria** (§16 of the paper) are ten observable conditions under which the Onturgy program's own claims fail. They include: generativity fails (distinct commitments don't yield distinct architectures), measurability fails (the possibility graph cannot be estimated), the kernel fails (ablation shows dimensions are redundant or insufficient), the audit fails (independent auditors cannot agree), lineage fails (documented lineage explains no variance), and others. Each condition is testable; the first project of the program is to test them.

### Is Onturgy falsifiable?

Yes. Falsifiability is built in (§16). The four-pass empirical program produced a candidate for revision (Value as a conditional dimension) by running ablation on the kernel's own dimensions. The refined prediction is verified at N=50: declared-and-operationally-divergent architectures show Value-load at 100%; declared-but-implementation-failure and undeclared architectures show Value-load at 0%. Three patterns would falsify this prediction; none have been observed.

### What is the relationship to critical algorithm studies?

Onturgy acknowledges precedents in critical algorithm studies, including Lessig on code as regulation, Winner on the politics of artifacts, Bachrach–Baratz and Lukes on power, Argyris–Schön on espoused theory vs theory-in-use, Hirschman on exit, Sen's capability approach, Hacking's looping effects, and the open-source tradition. Onturgy's claimed contribution is narrower: a measurable, costed model of practical possibility and a kernel derived from an explicit criterion, with its own failure tests.

### How can I contribute to Onturgy?

You can: (1) **read** the kernel paper and empirical passes; (2) **audit** a system using the [audit template](./audits/audit-template.md); (3) **propose a change** to a kernel dimension by opening a pull request with the change, evidence, and origin tag; (4) **run the multi-auditor protocol** with a colleague to test the audit's reliability (§7); (5) **fork** the kernel if you disagree with the canonical version (the fork right is the backstop that keeps maintainers accountable). See [`CONTRIBUTING.md`](./CONTRIBUTING.md) for the full protocol.

### Can I fork the kernel?

Yes. The kernel is MIT-licensed and the fork right is a backstop. The kernel is a minimal constitutional-liberal floor; forks that deny Exit or Contestability below it are excluded by the kernel's own criterion. Forks that propose alternative dimensions, alternative criteria, or alternative revisions are welcome.

---

## 📦 Repository Structure

```
onturgy/
├── README.md             ← you are here
├── KERNEL.md             ← operational summary of the six-dimension kernel
├── LICENSE               ← MIT
├── CONTRIBUTING.md      ← how to fork, propose, audit
├── CHANGELOG.md          ← history with origin tags (per §10.4)
│
├── commitments/          ← 6 commitment files (YAML frontmatter, format of §15)
│   ├── C-AGENCY-01.md
│   ├── C-VALUE-01.md        (v2: conditional dimension)
│   ├── C-AUTHORITY-01.md
│   ├── C-MEMORY-01.md
│   ├── C-EXIT-01.md
│   └── C-CONTESTABILITY-01.md
│
├── audits/
│   ├── chatgpt-audit-v1.json     ← Pass I audit results
│   ├── multi-auditor-protocol.md ← protocol for two human auditors
│   └── audit-template.md         ← fillable form
│
├── lineage/
│   ├── lineage-log.md            ← full lineage log of this project
│   └── girard-thiel-case.md      ← the §9.2 illustrative case
│
├── results/
│   ├── pass1-findings.md
│   ├── pass2-findings.md
│   ├── pass3-findings.md
│   ├── pass4-findings.md
│   └── refined-prediction.md    ← the ternary prediction
│
├── corpus/
│   ├── ablation-corpus-n50.md   ← 50 documented architectural failures
│   └── boundary-cases.md        ← 8 boundary cases from Pass IV
│
├── papers/                       ← all six PDFs
│   ├── ONTURGY-v1.pdf
│   ├── ONTURGY-v2.pdf            ← current version
│   ├── empirical-pass-1.pdf
│   ├── empirical-pass-2.pdf
│   ├── empirical-pass-3.pdf
│   └── empirical-pass-4.pdf
│
├── encodings/                    ← placeholder (constraints per commitment)
├── architectures/                ← placeholder (rival implementations)
├── stress/                       ← placeholder (pre-registered interventions)
└── forks/                        ← placeholder (divergences)
```

---

## 🚀 Quick Start

### Read the kernel

```bash
# Open the current version of the kernel paper
open papers/ONTURGY-v2.pdf
```

### Audit a system

```bash
# Copy the audit template
cp audits/audit-template.md audits/my-system-audit.md

# Fill in the ten dimensions using public evidence
# Score each (Low/Medium/High) with a one-line reason
```

### Push to GitHub (after downloading the tarball)

```bash
tar -xzf onturgy-repo.tar.gz
cd onturgy
git init
git add .
git commit -m "Initial commit: ONTURGY kernel v2 + 4 empirical passes"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/onturgy.git
git push -u origin main
```

**Security note:** Your GitHub token never leaves your machine. Commit history attributes to you. Push is under your control.

---

## 📊 Empirical Status (October 2026)

The four-pass empirical program produced and verified a progressive revision:

| Pass | Test | Key finding |
|---|---|---|
| **I** | Onturgic Audit of ChatGPT + lineage log + ablation at N=8 | instruments work; Value appeared redundant (artifact of small corpus) |
| **II** | Multi-auditor simulation + N=30 + direct redundancy test | kill criterion 7 active (audit fragile on 3 dimensions); Value NOT redundant; candidate revision proposed |
| **III** | N=50 corpus + progressive revision verification | declared cases show 57% Value-load; undeclared show 0%; revision progressive |
| **IV** | 8 boundary cases + ternary refinement | declared-and-divergent: 100%; declared-but-implementation-failure: 0%; undeclared: 0%; no exceptions |

### The refined ternary prediction

> **Value is primitive of architectures that declare an objective whose operational behavior diverges from that declared objective. For other architectures, the audit reduces to five dimensions without loss.**

### Falsification frontier (Pass IV)

Three patterns would falsify the refined prediction (none observed at N=50):
1. A declared-and-divergent case that is not Value-load.
2. An undeclared case that is Value-load.
3. A declared-and-implementation-failure case that is Value-load.

### Known limits (named honestly)

- **Single AI auditor** — all four passes were conducted by one AI agent.
- **English-language corpus** — selection biased toward Western-tech contexts.
- **Self-confirmation risk** — the AI that proposed the revision also tested and refined it.
- **Multi-auditor test unmet** — §7's reliability requirement requires two human auditors; the protocol is at [`audits/multi-auditor-protocol.md`](./audits/multi-auditor-protocol.md).

---

## 🧭 How Onturgy relates to existing traditions

Onturgy does not claim to be first. Its precedents are acknowledged in §17 of the paper:

- **Philosophy of technology:** Lessig (code as regulation), Winner (artifacts have politics), Ihde (post-phenomenology — implicit).
- **Theories of power:** Bachrach–Baratz (second face of power), Lukes (third dimension).
- **Critical realism and constructivism:** Wallner (constructive realism), von Glasersfeld (radical constructivism).
- **Practice theory:** Argyris–Schön (espoused theory vs theory-in-use).
- **Capability approach:** Sen (development as freedom).
- **Looping effects:** Hacking (human kinds).
- **Exit, voice, loyalty:** Hirschman.
- **Open-source tradition:** Raymond (the cathedral and the bazaar).
- **Lakatos:** research programmes, the constitutive/auxiliary distinction.
- **Computational philosophy:** Grim, Mar, St. Denis; Weisberg & Muldoon; Zollman.

Onturgy's claimed contribution is narrower than these traditions: a **measurable, costed model of practical possibility** and a **kernel derived from an explicit criterion**, with its own failure tests.

---

## 🎯 The Two Levels of Onturgy

### Level 1: Auditing architectures

The first level examines how architectures construct, constrain, distribute, and transform practical possibility, and whether those who live inside them can revise them. The instruments are:

- The **possibility graph** $G_t = (V, E, c, a)$ — a costed, access-weighted graph of capabilities.
- The **Onturgic Audit** — ten dimensions with question, evidence, and indicator.
- The **Agency Profile** — formal agency, override cost, opacity, reversibility, dependency.
- **ONTacture** — the method of testing commitments by building them.

### Level 2: Auditing the architect

The second level examines the architect: the lineage and cognitive environment that shape what a builder perceives as worth building — now including **AI systems that may act as mentors, critics, and collaborators**. The instruments are:

- The **lineage graph** $L = (N, U)$ — concepts, commitments, sources, artifacts, and documented uptake edges.
- The **lineage log** — origin tags for every change to a commitment.
- The **§10.2 test** for AI-owned configuration — reconstruct without AI, override, exit, attribute.

The four properties of AI that change the second level:
1. **Responsiveness** — it adapts to the individual and the moment.
2. **Breadth** — it draws on many traditions at once.
3. **Weak provenance** — its outputs have no stable author or citable chain.
4. **Common cause** — many builders may consult the same system.

Each creates a risk: provenance laundering, dependence, homogenization, sycophancy.

---

## 📝 Citation

```bibtex
@misc{onturgy2026,
  author       = {Alhosseini Almodarresieh, Seyed Alireza},
  title        = {ONTURGY: The Philosophical Kernel (2nd edition)},
  year         = {2026},
  month        = {October},
  howpublished = {\url{<repository url>}},
  note         = {Dedicated to Peter Thiel. Companion to four empirical pass working papers.}
}
```

---

## 🤝 Acknowledgments

- **Peter Thiel** — the kernel paper is dedicated to him, in the lineage tradition of René Girard.
- **René Girard** — the mimetic-desire framework informs §9.2 of the paper.
- **All precedents named in §17 of the paper** — Onturgy does not claim to be first.
- **The four-pass empirical program** was conducted with the assistance of AI systems; this is recorded honestly in [`lineage/lineage-log.md`](./lineage/lineage-log.md) and in the Provenance Statement of the v2 paper.

---

## ⚖️ License

[MIT](./LICENSE) — fork-friendly, attribution-required, no warranty.

The kernel is a minimal constitutional-liberal floor, not a value-free substrate. Forks that deny Exit or Contestability below it are excluded by the kernel's own criterion.

---

## 📮 Contact

- **Author:** Seyed Alireza Alhosseini Almodarresieh
- **Email:** `modarresi1913@gmail.com`
- **Issues:** Open an issue on this repository
- **Pull requests:** See [`CONTRIBUTING.md`](./CONTRIBUTING.md)

---

<div align="center">

*“The world is not obliged to execute our philosophy. When it refuses, that is the philosophy being tested.”*

**— §14 of ONTURGY: The Philosophical Kernel**

</div>

<!-- AEO/GEO structured data below -->

<details>
<summary>📋 Structured Data (Schema.org JSON-LD) — for answer engines and generative AI</summary>

```json-ld
{
  "@context": "https://schema.org",
  "@type": "SoftwareSourceCode",
  "name": "ONTURGY: The Philosophical Kernel",
  "alternateName": "Onturgy",
  "description": "An open-source architecture for constructing, auditing, and rebuilding possibility, and for examining who and what shapes the builders.",
  "author": {
    "@type": "Person",
    "name": "Seyed Alireza Alhosseini Almodarresieh",
    "email": "modarresi1913@gmail.com",
    "jobTitle": "Independent Researcher"
  },
  "datePublished": "2026-10-04",
  "dateModified": "2026-10-05",
  "version": "v2",
  "license": "https://opensource.org/licenses/MIT",
  "programmingLanguage": "LaTeX",
  "keywords": "philosophy of technology, AI governance, open source epistemology, architectural philosophy, possibility graph, bounded constructivism, dark ontology, lineage graph, forkable epistemology, AI ethics, audit framework, falsifiability, Lakatos, Peter Thiel, René Girard, AI provenance, reconstructability, contestability, declared-operational gap, human-AI cognitive systems, kill criteria, self-hosting, right to fork, portability, kernel dimensions",
  "citation": {
    "@type": "CreativeWork",
    "name": "ONTURGY: The Philosophical Kernel (2nd edition)",
    "author": "Seyed Alireza Alhosseini Almodarresieh",
    "datePublished": "2026-10-05"
  },
  "dedicatedTo": {
    "@type": "Person",
    "name": "Peter Thiel"
  },
  "isAccessibleForFree": true,
  "codeRepository": "<repository url>"
}
```

```json-ld
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "What is Onturgy?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Onturgy is an open-source philosophy of architecture that examines how platforms, protocols, institutions, and AI systems construct, constrain, distribute, and transform practical possibility. It is also a method for auditing architectures and for examining the lineage of the architects who build them. The name derives from Greek ont- (being) + -urgy (work, as in dramaturgy, liturgy)."
      }
    },
    {
      "@type": "Question",
      "name": "Who created Onturgy?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Onturgy was proposed by Seyed Alireza Alhosseini Almodarresieh, an independent researcher, in October 2026. The first edition of the kernel paper is dated 4 October 2026; the second edition (5 October 2026) incorporates a progressive revision produced and verified through a four-pass empirical program."
      }
    },
    {
      "@type": "Question",
      "name": "Why is Onturgy dedicated to Peter Thiel?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "The kernel paper is dedicated to Peter Thiel because the relationship between Thiel and his mentor René Girard is the illustrative case in section 9.2 of the paper. Thiel studied under Girard at Stanford and applied Girard's mimetic-desire framework to a domain (technology) that Girard himself wrote little about. This is an example of lineage through reinterpretation — a conceptual framework becoming architectural through the person who learns to see through it."
      }
    },
    {
      "@type": "Question",
      "name": "What is dark ontology in Onturgy?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Dark ontology is the set of ontological, normative, epistemic, and political assumptions a system operationalizes without declaring them. A system may state 'we empower users' while operationally treating user attention as an optimization resource. The gap between declared philosophy and operational philosophy is the declared-operational gap, and it is testable by writing declared commitments as explicit claims, deriving predictions under stress, and comparing to observed behavior."
      }
    },
    {
      "@type": "Question",
      "name": "What are the six kernel dimensions of Onturgy?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "The six kernel dimensions are: Agency (who initiates, intervenes, overrides), Value (does the operational objective diverge from the declared), Authority (who holds final decision power), Memory (what persists and who controls it), Exit (can participants leave without prohibitive barriers), and Contestability (can rules and decisions be challenged). Value is a conditional dimension in v2: primitive only when the architecture declares an objective whose operational behavior diverges from that declared objective."
      }
    },
    {
      "@type": "Question",
      "name": "What is ONTacture?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "ONTacture is the Onturgic method for testing philosophical commitments by construction. The pipeline is: Claim, Compile, Build rival architectures, Stress, Attribute failure, Assess negative horizon, Revise, Rebuild. ONTacture distinguishes between commitment forks (genuine philosophical disagreement), encoding forks (disputes about translation), and parameter forks (engineering variation)."
      }
    },
    {
      "@type": "Question",
      "name": "What is the lineage log in Onturgy?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "The lineage log is the instrument that makes AI influence on a project inspectable. Every change to a commitment carries an origin tag: human, ai_suggested, or co_developed. The lineage log records who proposed the change, what role the AI played, whether the human accepted or rejected, and whether the reasoning is reconstructable without the AI."
      }
    },
    {
      "@type": "Question",
      "name": "Is Onturgy falsifiable?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Yes. Falsifiability is built into section 16 of the paper, which lists ten kill criteria — observable conditions under which the program's own claims fail. The four-pass empirical program produced a candidate for revision (Value as a conditional dimension) by running ablation on the kernel's own dimensions. The refined prediction is verified at N=50: 100% of declared-and-operationally-divergent architectures show Value-load, while 0% of declared-but-implementation-failure and 0% of undeclared architectures show Value-load. Three patterns would falsify this prediction; none have been observed."
      }
    },
    {
      "@type": "Question",
      "name": "How can I contribute to Onturgy?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "You can: read the kernel paper and empirical passes; audit a system using the audit template; propose a change to a kernel dimension by opening a pull request with the change, evidence, and origin tag; run the multi-auditor protocol with a colleague to test the audit's reliability (section 7); fork the kernel if you disagree with the canonical version (the fork right is the backstop that keeps maintainers accountable). See CONTRIBUTING.md for the full protocol."
      }
    },
    {
      "@type": "Question",
      "name": "What is the Onturgic Audit?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "The Onturgic Audit is an instrument that, for each of ten dimensions (the six kernel dimensions plus Materiality, Labor, Legitimacy, and Reconstructability), records the question, the evidence examined, an indicator score (Low, Medium, or High), and a one-line reason. The audit's reliability requirement (section 7) is that two independent auditors working on the same system should agree on the classification of each indicator."
      }
    }
  ]
}
```

```json-ld
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "ONTURGY: The Philosophical Kernel",
  "alternativeHeadline": "An open-source architecture for constructing, auditing, and rebuilding possibility",
  "author": {
    "@type": "Person",
    "name": "Seyed Alireza Alhosseini Almodarresieh",
    "email": "modarresi1913@gmail.com"
  },
  "datePublished": "2026-10-04",
  "dateModified": "2026-10-05",
  "description": "An open-source philosophy of architecture with measurable model of practical possibility, six-dimension kernel, audit instrument, ONTacture method, lineage graph, and kill criteria.",
  "keywords": "philosophy of technology, AI governance, open source epistemology, architectural philosophy, possibility graph, bounded constructivism, dark ontology, lineage graph, forkable epistemology, AI ethics",
  "about": [
    {"@type": "Thing", "name": "Philosophy of technology"},
    {"@type": "Thing", "name": "AI governance"},
    {"@type": "Thing", "name": "Open source"},
    {"@type": "Thing", "name": "Architectural philosophy"},
    {"@type": "Thing", "name": "Falsifiability"}
  ],
  "mentions": [
    {"@type": "Person", "name": "Peter Thiel"},
    {"@type": "Person", "name": "René Girard"},
    {"@type": "Person", "name": "Lawrence Lessig"},
    {"@type": "Person", "name": "Langdon Winner"},
    {"@type": "Person", "name": "Steven Lukes"},
    {"@type": "Person", "name": "Imre Lakatos"},
    {"@type": "Person", "name": "Albert O. Hirschman"},
    {"@type": "Person", "name": "Ian Hacking"},
    {"@type": "Person", "name": "Amartya Sen"},
    {"@type": "Person", "name": "Chris Argyris"},
    {"@type": "Person", "name": "Donald Schön"}
  ],
  "isPartOf": {
    "@type": "CreativeWorkSeries",
    "name": "ONTURGY Empirical Passes",
    "hasPart": [
      {"@type": "CreativeWork", "name": "Empirical Pass I"},
      {"@type": "CreativeWork", "name": "Empirical Pass II"},
      {"@type": "CreativeWork", "name": "Empirical Pass III"},
      {"@type": "CreativeWork", "name": "Empirical Pass IV"}
    ]
  }
}
```

</details>

<!-- Open Graph / Twitter Card metadata -->
<!--
Open Graph:
  og:title        = ONTURGY: The Philosophical Kernel
  og:description  = An open-source architecture for constructing, auditing, and rebuilding possibility
  og:type         = article
  og:image        = <preview image URL>
  og:url          = <repository URL>

Twitter Card:
  twitter:card        = summary_large_image
  twitter:title       = ONTURGY: The Philosophical Kernel
  twitter:description = An open-source architecture for constructing, auditing, and rebuilding possibility
  twitter:image       = <preview image URL>
-->

---

<div align="center">

**[⬆ Back to top](#onturgy)**

Built with [tectonic](https://tectonic-typesetting.github.io/) · Powered by [LaTeX](https://www.latex-project.org/) · Released under [MIT](./LICENSE)

</div>

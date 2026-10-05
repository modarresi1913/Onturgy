# Commitment: C-MEMORY-01

```yaml
id: C-MEMORY-01
statement: "What persists and what is forgotten is itself a form of power; the audit makes it visible."
status: constitutive
rivals: [C-EXIT-01]
encoding: encodings/memory-01.md
audit:
  proponent: "Author"
  verdict: signed_off
bridge:
  observable: "export completeness; third-party control over stored data"
  direction: "incomplete export or high third-party control supports C-MEMORY-01 as a finding"
search_budget:
  implementation_checks: [3]
  re_encodings: 2
  parameter_ranges: {retention: indefinite|bounded|deletable}
origin: human
```

## Statement

What persists, what is forgotten, and who controls continuity is itself a form of power. An architecture that retains indefinitely without export, or that forgets what users need to reconstruct, is failing this dimension.

## Operational reading

- **Question:** What persists, and who owns it?
- **Evidence:** retention policy, export tools, training-data opt-out.
- **Indicator:** export completeness; third-party control.

A system may have a working export tool but only export raw transcripts, not the computational structure (system prompts, fine-tuned weights, custom instructions). The export is technically present but practically insufficient.

## Empirical status

The Pass I ChatGPT audit scored Memory as **Medium**: export tool exists and works; retention persists indefinitely unless deleted; third-party control is high (OpenAI controls storage, indexing, and derived embeddings).

The Pass IV ablation found that Memory uniquely detects three cases in the N=50 corpus: Google+ shutdown, 23andMe breach, Cambridge Analytica.

## Rivals

- `C-EXIT-01`: "Could the participant leave" is the operative question, not "what persists."

Memory and Exit are related but distinct. Memory asks *what stays*; Exit asks *can you take it with you when you go*. The Pass IV ablation confirmed both do unique work.

## Bridge principle

The observable is **export completeness** and **third-party control over stored data**. Direction: incomplete export or high third-party control supports C-MEMORY-01 as a finding.

## Search budget

- 3 implementation checks
- 2 re-encodings
- Parameter range: retention ∈ {indefinite, bounded, deletable}

## Origin

`human` — this commitment originates with the author.

## See also

- §5 of the paper
- §7 (The Onturgic Audit, Memory row)
- §10 (AI in the Lineage, where reasoning records live)

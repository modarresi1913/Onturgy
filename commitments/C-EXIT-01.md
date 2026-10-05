# Commitment: C-EXIT-01

```yaml
id: C-EXIT-01
statement: "Participants must be able to leave an architecture without prohibitive architectural barriers."
status: constitutive
rivals: [C-MEMORY-01, C-CONTESTABILITY-01]
encoding: encodings/exit-01.md
audit:
  proponent: "Author"
  verdict: signed_off
bridge:
  observable: "architectural barrier; exit cost (NaturalLoss + ArchitecturalBarrier)"
  direction: "rising architectural barrier with falling alternative reach supports C-EXIT-01 as a finding"
search_budget:
  implementation_checks: [3]
  re_encodings: 2
  parameter_ranges: {exit_cost: low|medium|high}
origin: human
```

## Statement

Participants must be able to leave an architecture without prohibitive architectural barriers. The right to exit is one of the two values the kernel is not neutral about (the other being Contestability).

## Operational reading

- **Question:** Can participants meaningfully leave?
- **Evidence:** export paths, contracts, interoperability.
- **Indicator:** architectural barrier; exit cost.

### Exit cost decomposition

```
ExitCost = NaturalLoss + ArchitecturalBarrier
```

- **Natural loss** is value that cannot be moved because the relation itself constitutes it (the people in a network, the benefit of a good service).
- **Architectural barrier** is cost produced by design: non-portable formats, undocumented interfaces, contractual penalties, deliberate friction.

A rising exit cost is not by itself a sign of coercion; value accumulates legitimately. What is suspect is a rising **architectural barrier**. Calling a given level coercive requires a normative threshold, which the audit must state rather than assume.

### Constructive lock-in

A sustained rise in architectural barrier together with falling alternative reach, measured over a declared period.

### Possibility monopoly

For a domain D and population A, a possibility monopoly exists when (i) for most actors, the alternative cost exceeds their resources, and (ii) at least a declared share θ of traversals in D pass through one architecture. Both thresholds are fixed before assessment. No explicit coercion is needed: the architecture only has to make leaving irrational.

## Empirical status

The Pass I ChatGPT audit scored Exit as **High**: export gives raw transcripts, not the computational structure (system prompt behavior, fine-tuned weights, custom instructions, learned preferences); architectural barrier is high for any sustained user.

The Pass IV ablation found that Exit uniquely detects five cases in the N=50 corpus: Twitter/X API, Reddit API, Google+ shutdown, Stable Diffusion license change, Apple App Store guideline changes.

## Rivals

- `C-MEMORY-01`: "What persists" vs "can you leave with what persists."
- `C-CONTESTABILITY-01`: "Can you challenge the rules" vs "can you leave the system."

## Bridge principle

The observable is the **architectural barrier** (the design-produced component of exit cost) and the **alternative reach** (number of equivalent alternative architectures available at acceptable cost). Direction: rising barrier with falling alternative reach supports C-EXIT-01 as a finding.

## Search budget

- 3 implementation checks
- 2 re-encodings
- Parameter range: exit_cost ∈ {low, medium, high}

## Origin

`human` — this commitment originates with the author.

## See also

- §3 of the paper (The Possibility Graph, exit cost decomposition)
- §5 (The Kernel)
- §7 (The Onturgic Audit, Exit row)
- §12 (Portability and the Right to Fork)

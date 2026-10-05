# Encodings

Compiled constraints + proponent-audit log.

Each commitment in `../commitments/` references an encoding file here. An encoding is the translation of a philosophical commitment into operational constraints. Per §8.2 of the paper, each encoding must be submitted to a proponent audit — a defender of the theory signs off or records objections.

## Status

No encodings have been submitted yet. The first encoding to be submitted will be the encoding of C-AGENCY-01 against the ChatGPT audit (see `../audits/chatgpt-audit-v1.json`).

## Format

An encoding file should specify:
- The commitment being encoded (e.g., `C-AGENCY-01`).
- The constraints that operationalize the commitment.
- The proponent audit: who signed off, what objections were recorded.
- The bridge principle: which observable bears on which commitment and in which direction.
- The search budget: implementation checks, re-encodings, parameter ranges.

See §8.2 of the v2 paper for the protocol.

# SKILLS-LIBRARY

A personal library of reusable skills for building projects, organizing tools, and putting together the features required for each project.

## Current inventory

Eight skills are present under `skills/`:

- `grilling`
- `domain-modeling`
- `research`
- `prototype`
- `retro`
- `wayfinder`
- `writing-for-agents`
- `setup-matt-pocock-skills`

## Governance

The registry is in `skill-registry.yaml`. Recursive dependencies are in `dependency-matrix.yaml`. Runtime and permission assumptions are in `capabilities.yaml`.

The default operating mode is read-only. External writes, issue-tracker changes, branch pushes, and pull requests require explicit user approval and independent read-back verification.

## Provenance

The six imported skills were recovered locally from `mattpocock-skills 1.2.3` and imported on the `import-matt-skills-v1` branch. They were not originally present in this repository before this import.

## Validation

Read the validation cases in `validation/test-cases.md`. The repository currently has no CI workflow; validation must be run before merging.

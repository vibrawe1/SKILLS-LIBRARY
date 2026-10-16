# Workflow State Contract

## Project states

`INTAKE` -> `TYPE_DISCOVERY` -> `PLANNING` -> `DRAFTING` -> `CHAPTER_REVIEW` -> `GLOBAL_AUDIT` -> `PUBLICATION_READY` -> `PUBLISHED`

The workflow may enter `BLOCKED`, `PAUSED`, `REJECTED`, or `RECOVERY_REQUIRED` from any state. `PUBLISHED` is terminal for that publication event.

## State rules

- `INTAKE`: capture the request and identify missing input.
- `TYPE_DISCOVERY`: user and BRAINSTORMER establish the type; no type is imposed.
- `PLANNING`: approved roles, stages, constraints, and acceptance criteria are recorded.
- `DRAFTING`: roles produce artifacts through controlled handoffs.
- `CHAPTER_REVIEW`: chapter audits and correction cycles are tracked.
- `GLOBAL_AUDIT`: cross-chapter, canon, provenance, formatting, rights, and metadata checks run.
- `PUBLICATION_READY`: all gates pass and only explicit user approval remains for publication.
- `BLOCKED`: a required decision, input, access, or verification is missing.
- `PAUSED`: user or system requested a safe pause with a valid checkpoint.
- `RECOVERY_REQUIRED`: the last active operation did not produce a valid checkpoint.

Never report a later state while a required earlier gate is unresolved.

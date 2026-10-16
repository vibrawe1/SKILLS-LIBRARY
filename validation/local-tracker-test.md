# Local Markdown tracker verification

Date: 2026-10-16
Mode: read-only configuration verification

## Expected contract

- tracker root: .scratch/
- one effort directory per map
- map: .scratch/<effort>/map.md
- child tickets: .scratch/<effort>/issues/NN-<slug>.md
- ticket type: research | prototype | grilling | task
- ticket status: claimed | resolved
- blockers: Blocked by: NN, NN
- claim: set Status: claimed before work
- resolve: append Answer, set Status: resolved, update map Decisions-so-far

## Result

PASS: the local tracker contract is documented in docs/agents/issue-tracker.md and matches the imported issue-tracker-local.md convention.

NOT RUN: no map or ticket was created during this configuration step.

This verification does not claim that local Markdown tracker behavior has been exercised end-to-end.

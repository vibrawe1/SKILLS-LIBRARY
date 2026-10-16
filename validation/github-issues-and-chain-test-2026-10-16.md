# GitHub Issues capability and behavioral-chain test

Date: 2026-10-16
Mode: read-only, no external writes

## GitHub Issues capabilities

| Capability | Result | Evidence |
|---|---|---|
| Read open issues | PASS | GitHub connector returned an empty list |
| Read closed issues | PASS | GitHub connector returned an empty list |
| Read labels | UNVERIFIED | connector rejected the public labels endpoint |
| Read assignees | UNVERIFIED | connector rejected the public assignees endpoint |
| Read milestones | UNVERIFIED | connector rejected the public milestones endpoint |
| Read projects | UNVERIFIED | connector rejected the public projects endpoint |
| Create/update issue | NOT RUN | outside read-only scope |
| Create labels | NOT RUN | outside read-only scope |
| Create dependencies | NOT RUN | outside read-only scope |
| Native sub-issue support | UNVERIFIED | no permitted read result |

Current conclusion: GitHub Issues is readable, but the complete Wayfinder capability contract is not verified. Keep wayfinder status CONFIGURATION_REQUIRED.

## Controlled behavioral-chain test

Test objective:

> Decide whether a small skill-library audit should use GitHub Issues or a local Markdown tracker, then plan the next safe step.

Expected route:

1. grilling — HITL clarification and recommendation
2. domain-modeling — only after the user settles the tracker vocabulary and boundary
3. research — only if external tracker facts remain necessary
4. prototype — only if the desired tracker behavior is still ambiguous
5. wayfinder — only after the tracker capability is configured and approved

Observed safe behavior:

- grilling is the first required step;
- grilling must ask the user and wait;
- the agent must not answer on behalf of the user;
- domain-modeling cannot be finalized before that answer;
- research, prototype, and wayfinder remain pending;
- no issue, label, dependency, branch, or file was created by this test.

Result: PASS for human-gate routing; BLOCKED for continuation by design.

The chain is not end-to-end complete because its first stage is intentionally HITL and the GitHub capability contract is incomplete.

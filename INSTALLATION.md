# Installation and runtime use

This repository is the source package for eight skills. It is not, by itself, proof that every skill is installed or active in a ChatGPT/Codex runtime.

## Package contents

Copy or install the complete `skills/` tree, not only the `SKILL.md` files. Companion references and `agents/openai.yaml` files are required by several skills.

## Runtime checks

Before use, verify:

1. The runtime exposes the skills under their exact names.
2. `grilling`, `domain-modeling`, `research`, `prototype`, and `writing-for-agents` can be invoked or reached by the runtime policy.
3. `setup-matt-pocock-skills` remains approval-gated because it prepares repository configuration.
4. `wayfinder` has a configured issue tracker before any issue write.
5. `research` has a supported background-agent capability before parallel execution.
6. External writes remain blocked until the user approves the planned operations.

## Recommended invocation order

For a large, unclear project:

1. `grilling` — clarify and stress-test the objective.
2. `domain-modeling` — establish terms, boundaries, and decisions.
3. `research` — gather primary-source facts where needed.
4. `prototype` — make a cheap artifact when behavior or UI is uncertain.
5. `wayfinder` — map unresolved decisions and dependencies.
6. implementation skill — execute approved work.
7. `retro` — review the session and propose guardrails.

Use `writing-for-agents` when creating or changing agent-facing instructions. Use `setup-matt-pocock-skills` only when repository tracker/domain configuration is explicitly being prepared.

## Evidence rule

A file present in this repository proves package presence only. Runtime activation, connector availability, and end-to-end behavior require a separate runtime check.

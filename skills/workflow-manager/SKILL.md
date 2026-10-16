---
name: workflow-manager
description: Coordinate a user-owned book or content project through explicit roles, approvals, canon, provenance, checkpoints, bounded correction cycles, audits, and publication gates. Use when the user activates WORKFLOW-MANAGER or asks for a controlled multi-role production workflow.
metadata:
  short-description: Coordinate governed multi-role book projects
---

# WORKFLOW-MANAGER

## Purpose

Act as the technical workflow coordinator for a user-owned book or content project. Coordinate specialized roles, preserve provenance, expose uncertainty, and keep the user in final control. Do not assume the project type before the user and BRAINSTORMER establish it.

This skill is a workflow contract, not a replacement for the user's editorial judgment and not an autonomous publishing agent.

## Operating language

- User-facing communication may follow the user's language.
- Technical contracts, role handoffs, status labels, schemas, prompts, and audit records must be written in English.
- Preserve source material and distinguish source text from adapted workflow instructions.

## Authority model

1. The user has final authority over project direction, canon decisions, approvals, exceptions, and publication.
2. The editorial DIRECTOR owns editorial coordination and recommendations.
3. WORKFLOW-MANAGER owns technical sequencing, state tracking, checkpoints, validation, and gates.
4. A role may recommend, transform, audit, or report only within its contract.
5. No role may silently promote an inference, proposal, or unverified claim into canon.
6. No role may publish, send, overwrite an external artifact, or make an irreversible change without distinct user approval.

Read [references/authority-and-approvals.md](references/authority-and-approvals.md) before resolving an authority conflict.

## Required workflow

For every substantial project request:

1. Establish the project brief and identify missing information.
2. Ask BRAINSTORMER and the user to determine the project type when it is not already decided.
3. Build or update the role plan from the available role contracts.
4. Separate confirmed facts, provisional material, proposals, assumptions, open questions, and conflicts.
5. Run roles in explicit handoff order. Each handoff must include input, output, status, provenance, and next action.
6. Persist a checkpoint after each completed stage or role boundary when the environment supports persistence.
7. Stop at a human approval checkpoint when a decision changes canon, scope, public-facing claims, or publication readiness.
8. Permit at most three correction cycles for a chapter. After the third unsuccessful cycle, stop and escalate to the user.
9. Run chapter-level audits and a global audit before a publication recommendation.
10. Apply the publication gate. A recommendation is not a publication action.

Read [references/workflow-state.md](references/workflow-state.md), [references/checkpoints-and-recovery.md](references/checkpoints-and-recovery.md), and [references/correction-cycles.md](references/correction-cycles.md) when the workflow reaches those concerns.

## Handoff contract

Every role handoff must use this conceptual record:

```yaml
handoff_id: "stable identifier"
project_id: "stable identifier"
stage_id: "stage identifier"
role_id: "role identifier"
input_refs: []
output_ref: "artifact or message reference"
status: DRAFT | PROVISIONAL | READY_FOR_REVIEW | APPROVED | REJECTED | BLOCKED
claims: []
open_questions: []
conflicts: []
recommendation: "optional"
requires_user_decision: false
next_role: "role identifier or null"
created_at: "timestamp when available"
```

Never claim that a handoff is saved, approved, verified, or complete unless the destination or actual verification has been checked.

## Role routing

Use the smallest set of roles needed for the request. Do not run all roles by default. Keep the role identity and role-specific boundaries from the source material. Use [references/role-routing.md](references/role-routing.md) to select roles and preserve the source mapping.

## Evidence discipline

Use these result labels:

- `PASS`: the criterion was executed and evidence supports it.
- `FAIL`: the criterion was executed and the result violates it.
- `BLOCKED`: execution could not proceed because required input, authority, access, or a decision is missing.
- `UNVERIFIED`: a claim or artifact exists but has not been independently checked.
- `NOT_APPLICABLE`: the criterion does not apply, with a reason.

Report limitations. Do not convert design into implementation, execution into verification, or recommendation into approval.

## Traceability and regression

Before calling a workflow architecture final, maintain a rule-level traceability matrix. Every preserved, adapted, rejected, or unresolved source rule must have a source reference and a justification. Use [references/traceability-matrix.md](references/traceability-matrix.md).

Run the regression scenarios in [references/regression-scenarios.md](references/regression-scenarios.md) when the user requests validation or before declaring the workflow ready. Report each scenario individually as `PASS`, `FAIL`, `BLOCKED`, or `UNVERIFIED` with evidence.

## Publication gate

Do not publish automatically. A publication recommendation requires:

- approved project scope and project type;
- approved canon and provenance records;
- no unresolved blocking audit finding;
- all required chapter and global audits completed;
- export or rendering checks completed where applicable;
- metadata, rights, credits, and external-platform requirements verified when relevant;
- explicit user approval for the actual publication action.

Read [references/publication-gates.md](references/publication-gates.md) before making a readiness statement.

## Missing decisions

The current source package does not contain a verified copy of the user's sixteen architectural decisions. Until those decisions are supplied or recovered, keep affected matrix rows and contracts marked `UNVERIFIED` or `BLOCKED`. Do not invent precedence rules to make the package appear complete.

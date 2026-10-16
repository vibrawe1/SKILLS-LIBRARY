# Rule-Level Traceability Matrix

This is the initial matrix template. It is intentionally not marked final because the sixteen architectural decisions and the complete prior conversation were not available in the recovered thread.

| Rule ID | Source reference | Normalized rule | Destination contract | Decision | Verification | Status |
|---|---|---|---|---|---|---|
| WM-001 | User request | User retains final authority | `authority-and-approvals.md` | Preserved | Approval checkpoint test | VERIFIED_FROM_CURRENT_REQUEST |
| WM-002 | User request | DIRECTOR and WORKFLOW-MANAGER remain separate | `SKILL.md` | Preserved | Authority-boundary test | VERIFIED_FROM_CURRENT_REQUEST |
| WM-003 | User request | Project type is decided with user and BRAINSTORMER | `workflow-state.md` | Preserved | Type-discovery test | VERIFIED_FROM_CURRENT_REQUEST |
| WM-004 | User request | Canon and approvals are explicit | `authority-and-approvals.md` | Preserved | Canon promotion test | VERIFIED_FROM_CURRENT_REQUEST |
| WM-005 | User request | Checkpoints and recovery are required | `checkpoints-and-recovery.md` | Preserved | Recovery test | VERIFIED_FROM_CURRENT_REQUEST |
| WM-006 | User request | Maximum three correction cycles per chapter | `correction-cycles.md` | Preserved | Cycle-limit test | VERIFIED_FROM_CURRENT_REQUEST |
| WM-007 | User request | Global audit and publication gating are required | `publication-gates.md` | Preserved | Gate test | VERIFIED_FROM_CURRENT_REQUEST |
| WM-008 | Referenced conversation | One of sixteen architectural decisions | To be assigned | Unknown | Source recovery required | BLOCKED |
| WM-009 | Original role files | Every useful role rule must be preserved or justified | `role-routing.md`, final matrix | Pending | Rule-by-rule review | BLOCKED |
| WM-010 | Original role files | Conflicts must be resolved without unjustified loss | `authority-and-approvals.md` | Pending | Contradiction register | BLOCKED |
| WM-011 | Runtime requirement | Adaptive model selection requires verified model support | Future model contract | Pending | Runtime support matrix | BLOCKED |

Use one row per atomic rule. Do not close a row solely because a sentence was copied into a new file; verify the behavior or explicitly mark it `UNVERIFIED`.

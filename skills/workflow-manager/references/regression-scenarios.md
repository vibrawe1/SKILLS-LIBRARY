# Regression Scenarios

The following initial scenarios are the minimum behavioral contract. They are not claimed to be the user's final eighteen scenarios until the missing source matrix is recovered.

| ID | Scenario | Expected result |
|---|---|---|
| R-01 | Project type is unspecified | Ask user and BRAINSTORMER; do not impose a type. |
| R-02 | Role recommends a canon change | Record recommendation; require user approval. |
| R-03 | DIRECTOR requests a technical state change | WORKFLOW-MANAGER validates the state; editorial authority is not silently expanded. |
| R-04 | Two canon sources conflict | Preserve both, mark conflict, stop affected path, request decision. |
| R-05 | Model output contains an unsupported fact | Mark unverified; do not promote to canon. |
| R-06 | Completed output is saved | Create and verify a checkpoint. |
| R-07 | Output save is interrupted | Do not create a valid checkpoint; mark recovery required. |
| R-08 | Workflow resumes after pause | Resume from latest valid checkpoint. |
| R-09 | First chapter correction cycle fails | Record cycle one and rerun affected audits. |
| R-10 | Third correction cycle still fails | Block and escalate; do not start cycle four. |
| R-11 | Chapter audit passes | Allow progression to the next required gate. |
| R-12 | Global audit has a blocking finding | Block publication readiness. |
| R-13 | Global audit passes but user has not approved publication | Prepare recommendation only; do not publish. |
| R-14 | Publication metadata is unverified | Mark publication gate unverified or blocked. |
| R-15 | Role is not needed for the project | Do not run it by default. |
| R-16 | A source role file has no normalized pair | Preserve it and mark mapping unresolved. |
| R-17 | Local model list changes | Revalidate supported identifiers before adaptive selection. |
| R-18 | User explicitly overrides a prior provisional decision | Record the new decision, update canon/provenance, and invalidate affected downstream checks. |

Each executed scenario must be reported as `PASS`, `FAIL`, `BLOCKED`, or `UNVERIFIED`, with evidence and timestamp where available.

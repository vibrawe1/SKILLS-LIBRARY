# Checkpoints and Recovery Contract

## Checkpoint contents

A valid checkpoint records the project ID, workflow state, completed stage or role, input references, output reference, canon version, open conflicts, approval status, and timestamp when available.

## Safe checkpoint rule

An output becomes a checkpoint only after the complete output and its metadata are saved at the real destination and independently re-read or otherwise verified. A partial response is not a checkpoint.

## Recovery

On pause, stop, error, or session interruption:

1. Locate the most recent valid checkpoint.
2. Verify its destination and state.
3. Do not repeat completed stages unless the user requests a rerun or the checkpoint is invalid.
4. Mark missing or uncertain state `RECOVERY_REQUIRED` or `UNVERIFIED`.
5. Resume only from a valid checkpoint after confirming the next action.

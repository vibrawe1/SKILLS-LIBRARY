# Reusable SKILLS-LIBRARY Foundation

## Destination

Make SKILLS-LIBRARY reusable across projects, with governed skill selection, dependency resolution, verification, local tracking, and human approval gates.

## Notes

- Core orchestration: workflow-manager
- Verification control: unlazy
- Continuous improvement: retro
- Tracker: local Markdown under .scratch/
- Current repository branch: import-matt-skills-v1
- External writes require explicit approval
- Runtime activation must be verified in a fresh workspace before merge

## Decisions so far

- Local Markdown is the canonical tracker for this repository.
- The repository must contain workflow-manager and unlazy as core components.
- The current project is the pilot for validating future reuse.

## Not yet specified

- How this repository is installed or synchronized into a fresh ChatGPT/Codex workspace.
- Which runtime surface automatically loads AGENTS.md and the skill package.
- The minimum end-to-end behavioral fixture for a new project.

## Out of scope

- GitHub Issues as the normal planning tracker for this repository.
- Automatic merge or publication without a separate approval.

# SKILLS-LIBRARY

A reusable, governed library of skills for building and coordinating projects.

## Core components

- workflow-manager — project orchestration and role routing
- unlazy — independent verification and evidence discipline
- retro — continuous improvement after each project session

## Project-execution skills

- grilling
- domain-modeling
- research
- prototype
- wayfinder

## Library-governance skills

- writing-for-agents
- setup-matt-pocock-skills

## Governance

The registry is in skill-registry.yaml. Recursive dependencies are in dependency-matrix.yaml. Runtime and permission assumptions are in capabilities.yaml.

The default operating mode is read-only. External writes, issue-tracker changes, branch pushes, and pull requests require explicit user approval and independent read-back verification.

## Tracker

This repository uses the local Markdown tracker under .scratch/. Read docs/agents/issue-tracker.md before creating maps or tickets.

## Provenance

The six original missing skills were recovered locally from mattpocock-skills 1.2.3. workflow-manager was recovered from the installed workflow-manager package, and unlazy from the local UNLAZY skill. All imported components are recorded as recovered local sources, not as files that originally existed in this repository.

## Validation

Read validation/test-cases.md and run validation/validate-skills.ps1 before merging. GitHub Actions runs the structural validator on pushes and pull requests.

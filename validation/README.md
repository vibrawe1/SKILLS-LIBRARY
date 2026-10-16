# Validation

Run the structural validator from the repository root:

```powershell
./validation/validate-skills.ps1
```

The validator checks the eight registered skill entrypoints, frontmatter names, and the 500-line limit.

It does not prove runtime activation, connector access, issue-tracker configuration, background-agent support, or end-to-end behavior. Those remain separate verification gates.

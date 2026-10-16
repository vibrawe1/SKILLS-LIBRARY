param(
  [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot)
)

$ErrorActionPreference = "Stop"
$registry = Join-Path $RepositoryRoot "skill-registry.yaml"
if (-not (Test-Path -LiteralPath $registry)) { throw "Missing skill-registry.yaml" }

$expected = @(
  "grilling","domain-modeling","research","prototype",
  "retro","wayfinder","writing-for-agents","setup-matt-pocock-skills"
)

$failures = @()
foreach ($name in $expected) {
  $path = Join-Path $RepositoryRoot "skills\$name\SKILL.md"
  if (-not (Test-Path -LiteralPath $path)) {
    $failures += "Missing $path"
    continue
  }
  $lines = (Get-Content -LiteralPath $path).Count
  if ($lines -gt 500) { $failures += "$name exceeds 500 lines" }
  $text = Get-Content -Raw -LiteralPath $path
  if (-not $text.StartsWith("---")) { $failures += "$name lacks frontmatter" }
  if ($text -notmatch "(?m)^name:\s*$name\s*$") { $failures += "$name frontmatter name mismatch" }
}

if ($failures.Count -gt 0) {
  $failures | ForEach-Object { Write-Error $_ }
  exit 1
}

Write-Output "PASS: eight skill entrypoints exist, have frontmatter, and are <= 500 lines."

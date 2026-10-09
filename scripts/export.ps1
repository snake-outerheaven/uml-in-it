# Exporta todos os .drawio de diagrams/ para exports/ (PNG e SVG) usando a CLI do draw.io.
# Uso: .\scripts\export.ps1 [-Format png|svg|pdf]
param([string]$Format = "svg")
$root = Split-Path $PSScriptRoot -Parent
$exe = (Get-Command drawio -ErrorAction SilentlyContinue).Source
if (-not $exe) { $exe = "C:\Program Files\draw.io\draw.io.exe" }
if (-not (Test-Path $exe)) { Write-Error "draw.io nao encontrado. Instale: winget install JGraph.Draw"; exit 1 }
Get-ChildItem "$root\diagrams" -Recurse -Filter *.drawio | ForEach-Object {
  $rel = $_.FullName.Substring("$root\diagrams\".Length)
  $out = Join-Path "$root\exports" ([IO.Path]::ChangeExtension($rel, $Format))
  New-Item -ItemType Directory -Force (Split-Path $out) | Out-Null
  & $exe --export --format $Format --output $out $_.FullName
}

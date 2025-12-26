$ErrorActionPreference = 'Stop'
$path = 'e:\haga\ferrari-report\Ferrari_Economics_and_Marketing_Report.tex'
$content = Get-Content -Raw -LiteralPath $path

$replacements = @(
  @{ from = '\\titleformat';   to = '\titleformat' },
  @{ from = '\\titlespacing';  to = '\titlespacing' },
  @{ from = '\\thispagestyle'; to = '\thispagestyle' },
  @{ from = '\\textbf';        to = '\textbf' },
  @{ from = '\\toprule';       to = '\toprule' }
)

foreach ($r in $replacements) {
  $content = $content.Replace($r.from, $r.to)
}

Set-Content -LiteralPath $path -Value $content -NoNewline -Encoding UTF8
Write-Host "Collapsed double backslashes in: $path"
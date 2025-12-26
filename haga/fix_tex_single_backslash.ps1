$ErrorActionPreference = 'Stop'
$path = 'e:\haga\ferrari-report\Ferrari_Economics_and_Marketing_Report.tex'
$content = Get-Content -Raw -LiteralPath $path

# Collapse accidental double-backslash LaTeX commands (e.g. \\titleformat -> \titleformat)
$content = $content -replace '(?m)^([ \t]*)\\\\(titleformat|titlespacing\*|thispagestyle|textbf|toprule)\b', '$1\\$2'

Set-Content -LiteralPath $path -Value $content -NoNewline -Encoding UTF8
Write-Host "Fixed double-backslashes: $path"
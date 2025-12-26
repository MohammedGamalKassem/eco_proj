$ErrorActionPreference = 'Stop'
$path = 'e:\haga\ferrari-report\Ferrari_Economics_and_Marketing_Report.tex'
$content = Get-Content -Raw -LiteralPath $path

# Convert line-start commands like \\titleformat -> \titleformat
$content = $content -replace '(?m)^([ \t]*)\\(titleformat|titlespacing\*|thispagestyle|textbf|toprule)\b', '$1\\$2'

Set-Content -LiteralPath $path -Value $content -NoNewline -Encoding UTF8
Write-Host "Collapsed leading \\\\ commands: $path"
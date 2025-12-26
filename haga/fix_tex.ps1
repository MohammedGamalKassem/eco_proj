$ErrorActionPreference = 'Stop'
$path = 'e:\haga\ferrari-report\Ferrari_Economics_and_Marketing_Report.tex'
$content = Get-Content -Raw -LiteralPath $path

$content = $content -replace '(?m)^([ \t]*)itleformat', '$1\\titleformat'
$content = $content -replace '(?m)^([ \t]*)itlespacing\*', '$1\\titlespacing*'
$content = $content -replace '(?m)^([ \t]*)hispagestyle\b', '$1\\thispagestyle'
$content = $content -replace '(?m)^([ \t]*)extbf\b', '$1\\textbf'
$content = $content -replace '(?m)^([ \t]*)oprule\b', '$1\\toprule'

Set-Content -LiteralPath $path -Value $content -NoNewline -Encoding UTF8
Write-Host "Patched: $path"
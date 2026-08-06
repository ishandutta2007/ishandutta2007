$content = Get-Content -Raw README.md
$sec1Start = $content.IndexOf('# 💻 My favorite tools and technologies')
$sec1End = $content.IndexOf('## Languages and Tools')
$sec1 = $content.Substring($sec1Start, $sec1End - $sec1Start)

$sec2Start = $content.IndexOf('## Languages and Tools')
$sec2End = $content.IndexOf('# 📊 GitHub Stats:')
$sec2 = $content.Substring($sec2Start, $sec2End - $sec2Start)

$urls = ([regex]::Matches($sec1 + $sec2, 'src="([^"]+)"')).Groups | Where-Object { $_.Name -eq '1' } | ForEach-Object { $_.Value } | Sort-Object -Unique

foreach ($url in $urls) {
    if ($url -match '^http') {
        try {
            $response = Invoke-WebRequest -Uri $url -Method Head -UseBasicParsing -ErrorAction Stop
        } catch {
            Write-Output "Broken: $url - $($_.Exception.Message)"
        }
    }
}

$content = Get-Content -Raw README.md
$sec2Start = $content.IndexOf('## Languages and Tools')
$sec2End = $content.IndexOf('# 📊 GitHub Stats:')
$sec2 = $content.Substring($sec2Start, $sec2End - $sec2Start)

$urls = ([regex]::Matches($sec2, 'src="([^"]+)"')).Groups | Where-Object { $_.Name -eq '1' } | ForEach-Object { $_.Value } | Sort-Object -Unique

foreach ($url in $urls) {
    if ($url -match '^http') {
        try {
            $response = Invoke-WebRequest -Uri $url -Method Head -UseBasicParsing -SkipCertificateCheck -ErrorAction Stop
            if ($response.StatusCode -ge 400) {
                Write-Output "Broken ($($response.StatusCode)): $url"
            }
        } catch {
            Write-Output "Broken (Exception): $url - $($_.Exception.Message)"
        }
    }
}

Write-Host 'Powershell' $PsVersionTable.PSVersion '-' (Get-date)
Write-Host 'Greetings, Patrick. Carpe Diem.'
Write-Host ''

Import-Module -Name syntax-highlighting
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\emodipt-extend.omp.json" | Invoke-Expression
param (
    [Parameter(Mandatory=$true)][string]$File
    )

$json = Get-Content -Raw -Path $File | ConvertFrom-Json
Write-Host $json.id
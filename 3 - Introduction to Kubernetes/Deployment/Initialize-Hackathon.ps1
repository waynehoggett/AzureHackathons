$ParticipantCount = 25
$Count = (Get-Content -Path ./RGs.txt -ErrorAction SilentlyContinue | Measure-Object -Line).Lines
$Region = "australiaeast"
# Only using the first of these
$VMSizes = @('Standard_F2s_v2', 'Standard_D2_v3', 'Standard_D2_v4')
while ($Count -lt $ParticipantCount) {
    Write-Host "Deploying $($Count+1) of $($ParticipantCount)"
    & ./Deploy-Hack.ps1 -ResourceLocation $Region -vmSize $VMSizes[0]
    $Count = (Get-Content -Path ./RGs.txt -ErrorAction SilentlyContinue | Measure-Object -Line).Lines
}
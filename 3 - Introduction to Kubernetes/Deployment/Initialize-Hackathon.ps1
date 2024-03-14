$ParticipantCount = 1
$Count = 0
$Region = "australiaeast"
# Only using the first of these
$VMSizes = @('Standard_F2s_v2', 'Standard_D2_v3', 'Standard_D2_v4')
while ($Count -lt $ParticipantCount) {
    & ./Deploy-Hack.ps1 -ResourceLocation $Region -vmSize $VMSizes[0]
    $Count++
}
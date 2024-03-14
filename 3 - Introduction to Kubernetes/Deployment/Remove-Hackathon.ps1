$RGs = Get-Content .\RGs.txt
foreach ($RG in $RGs) {
    Remove-AzResourceGroup -Name $RG -Force -ErrorAction Continue -AsJob
}
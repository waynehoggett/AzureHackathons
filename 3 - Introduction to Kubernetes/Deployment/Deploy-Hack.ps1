$ErrorActionPreference = 'Stop'

$SubscriptionID = "847cb8f3-802b-42ab-aa9b-fe9d17d25580"
$GUID = New-Guid
$ResourceGroupName = "rg-$($GUID -replace '-', '')"
$ResourceLocation = "australiaeast"

# Connect to Azure
Connect-AzAccount -SubscriptionId $SubscriptionID

# Create the ResourceGroup if it doesn't exist
if (-not (Get-AzResourceGroup -Name $ResourceGroupName -ErrorAction 'SilentlyContinue')) {
    New-AzResourceGroup -Name $ResourceGroupName -Location $ResourceLocation 
}

# Deploy the template
$DeploymentParameters = @{
    guid = $GUID
}
try {
    New-AzResourceGroupDeployment -ResourceGroupName $ResourceGroupName -TemplateFile ./main.bicep -TemplateParameterObject $DeploymentParameters
}
catch {
    # If the deployment fails, roll back by removing the RG
    Write-Host "Deployment failed, rolling back..." -ForegroundColor Red
    Remove-AzResourceGroup -ResourceGroupName $ResourceGroupName -Force
}
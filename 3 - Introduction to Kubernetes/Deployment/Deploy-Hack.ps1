param (
    [string]
    $ResourceLocation = "australiaeast",
    [string]
    $vmSize = "Standard_F4s_v2"
)
$ErrorActionPreference = 'Stop'
$SubscriptionID = "847cb8f3-802b-42ab-aa9b-fe9d17d25580"
$GUID = New-Guid
$ResourceGroupName = "rg-$($GUID -replace '-', '')"

# Connect to Azure
if (-not (Get-AzContext).Subscription.Id -eq $SubscriptionID) {
    Connect-AzAccount -SubscriptionId $SubscriptionID
}

# Create the ResourceGroup if it doesn't exist
if (-not (Get-AzResourceGroup -Name $ResourceGroupName -ErrorAction 'SilentlyContinue')) {
    $RG = New-AzResourceGroup -Name $ResourceGroupName -Location $ResourceLocation
}

# Deploy the template
$DeploymentParameters = @{
    guid = $GUID
}
try {
    $Deployment = New-AzResourceGroupDeployment -ResourceGroupName $ResourceGroupName -TemplateFile ./main.bicep -TemplateParameterObject $DeploymentParameters
    Write-Output "Assignee:" | Out-File -Path ./Endpoints.txt -Append
    Write-Output "Email:" | Out-File -Path ./Endpoints.txt -Append
    Write-Output "DNS Name: $($Deployment.Outputs.dnsName.Value)" | Out-File -Path ./Endpoints.txt -Append
    Write-Output "Public IP Address: $($Deployment.Outputs.ipAddress.Value)" | Out-File -Path ./Endpoints.txt -Append
    Write-Output "VM Username: $($Deployment.Outputs.username.Value)" | Out-File -Path ./Endpoints.txt -Append
    Write-Output "VM Password: $($Deployment.Outputs.password.Value)" | Out-File -Path ./Endpoints.txt -Append
    Write-Output "Resource Group Name: $($RG.ResourceGroupName)" | Out-File -Path ./Endpoints.txt -Append
    Write-Output "--------------------------------------" | Out-File -Path ./Endpoints.txt -Append
    # Save the RG to the list of RGs if successful
    $RG.ResourceGroupName | Out-File -Path ./RGs.txt -Append
}
catch {
    #If the deployment fails, roll back by removing the RG
    Write-Host "Deployment failed, rolling back..." -ForegroundColor Red
    Remove-AzResourceGroup -ResourceGroupName $ResourceGroupName -Force
}
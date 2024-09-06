# Authenticate to Azure
Connect-AzAccount

# Specify the resource group and Databricks workspace name
$resourceGroup = "RameshPOC"
$databricksWorkspaceName = "databricksrgdemo"

# Get the Databricks workspace
$workspace = Get-AzResource -ResourceGroupName $resourceGroup -ResourceType Microsoft.Databricks/workspaces -Name $databricksWorkspaceName

# Retrieve the public IP address
$publicIp = $workspace.Properties.managedResourcePublicIp
Write-Output "Public IP Address of Azure Databricks cluster: $publicIp"

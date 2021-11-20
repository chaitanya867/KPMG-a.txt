# Ensures you do not inherit an AzContext in your runbook
Disable-AzContextAutosave -Scope Process

$Conn = Get-AutomationConnection  -Name "AzureRunAsConnection"
Connect-AzAccount -ServicePrincipal -Tenant $Conn.TenantID `
-ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint

$AzureContext = Select-AzSubscription -SubscriptionId $Conn.SubscriptionID

Get-AzSqlDatabase –ResourceGroupName "KPMG-CA-DWSynapsePOC-RG" `
–ServerName "sqlpoolservername" -DatabaseName "mySampleDataWarehouse" 

#stop sql pool
Suspend-AzSqlDatabase –ResourceGroupName "KPMG-CA-DWSynapsePOC-RG" `
–ServerName "sqlpoolservername" –DatabaseName "mySampleDataWarehouse"
# Ensures you do not inherit an AzContext in your runbook
Disable-AzContextAutosave -Scope Process

$Conn = Get-AutomationConnection  -Name "AzureRunAsConnection"
Connect-AzAccount -ServicePrincipal -Tenant $Conn.TenantID `
-ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint

$AzureContext = Select-AzSubscription -SubscriptionId $Conn.SubscriptionID
Get-AzVM
# restart vm 
Restart-AzVM -ResourceGroupName "KPMG-CA-DWSynapsePOC-RG" -Name "caadcapp0603"


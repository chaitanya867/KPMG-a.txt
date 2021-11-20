#code to create storage account fot boot diagnostic of SHIR vm.
resource "azurerm_storage_account" "Boot-Diagnostic-SA" {
  
  name                     = var.Boot_Diagnostic_SA_name
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  access_tier              = var.access_tier
  account_replication_type = var.account_replication_type
  allow_blob_public_access = var.allow_blob_public_access
  tags = var.tags
}


#code to create storage container for boot diagnostic.
resource "azurerm_storage_container" "Boot-Diagnostic-SA-container" {
  depends_on = [
    azurerm_storage_account.Boot-Diagnostic-SA
  ]
  name                  = var.Boot_Diagnostic_SA_container_name
  storage_account_name  = azurerm_storage_account.Boot-Diagnostic-SA.name
  container_access_type = var.container_access_type
}


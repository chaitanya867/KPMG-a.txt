#code to create storage account for analysis-service backup
resource "azurerm_storage_account" "Analysis-service-backup" {
  
  name                     = var.analysisbackup
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  access_tier              = var.access_tier
  account_replication_type = var.account_replication_type
  allow_blob_public_access = var.allow_blob_public_access
  tags = var.tags
}


#code to create fot storage container for analysis service backup
resource "azurerm_storage_container" "backup-storage-container" {
  depends_on = [
    azurerm_storage_account.Analysis-service-backup
  ]
  name                  = var.analysis-service-backup-container
  storage_account_name  = azurerm_storage_account.Analysis-service-backup.name
  container_access_type = var.container_access_type
}



/*
resource "azurerm_storage_account_network_rules" "netrules" {
  count = length(var.bypass)
  resource_group_name  = data.azurerm_resource_group.rg.name
  storage_account_name = azurerm_storage_account.Analysis-service-backup.name

  default_action = var.default_action
  bypass = element(var.bypass , count.index)

  depends_on = [
    azurerm_storage_container.backup-storage-container
  ]
}
*/
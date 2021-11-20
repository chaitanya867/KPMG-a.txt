#code to create  diagnostic_setting for ADLS-storage account
resource "azurerm_monitor_diagnostic_setting" "ADLS-storage-account-diagnostic" {
  depends_on   = [
    azurerm_storage_account.StorageAccount
  ]
  name               = var.storage_account_dia_name
  target_resource_id = azurerm_storage_account.StorageAccount.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.LogAnalyticsWp.id
 
  metric {
    category = var.metric_category
  }
}

#code to create  diagnostic_setting for Analysis-service-backup storage account
resource "azurerm_monitor_diagnostic_setting" "Analysis-service-backup-diagnostic" {
  depends_on   = [
    azurerm_storage_account.Analysis-service-backup
  ]
  name               = var.Analysis_service_backup_dia_name
  target_resource_id = azurerm_storage_account.Analysis-service-backup.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.LogAnalyticsWp.id
 
  metric {
    category = var.metric_category
  }
}



#code to create  diagnostic_setting for key-vault
resource "azurerm_monitor_diagnostic_setting" "key-vault-diagnostic" {
  depends_on   = [
   azurerm_key_vault.keyvault
  ]
  name               = var.key_vault_dia_name
  target_resource_id = azurerm_key_vault.keyvault.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.LogAnalyticsWp.id

  metric {
    category = var.KVmetric_category
  } 
}


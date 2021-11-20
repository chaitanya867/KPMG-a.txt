#code to create alert action group
resource "azurerm_monitor_action_group" "alert-action-group" {
  name                = var.action_grp_name
  resource_group_name = data.azurerm_resource_group.rg.name
  short_name          = var.short_name

  email_receiver {
      name = var.alert_reciever_name
      email_address = var.reciever_email
  }
}

#code to create metric alert for ADLS storage account
resource "azurerm_monitor_metric_alert" "StorageAccountAlert" {
    depends_on = [
        azurerm_storage_account.StorageAccount,
        azurerm_monitor_action_group.alert-action-group
    ]
  name                = var.Storage_Account_Alert_name
  resource_group_name = data.azurerm_resource_group.rg.name
  scopes              = [azurerm_storage_account.StorageAccount.id]
  description         = var.alert_discription

  criteria {
    metric_namespace = var.metric_namespace
    metric_name      = var.metric_name
    aggregation      = var.aggregation
    operator         = var.operator
    threshold        = var.threshold
    
  }

  action {
    action_group_id = azurerm_monitor_action_group.alert-action-group.id
  }
}

#code to create metric alert for AnalysisBackup storage account
resource "azurerm_monitor_metric_alert" "AnalysisBackupSAAlert" {
    depends_on = [
        azurerm_storage_account.Analysis-service-backup,
        azurerm_monitor_action_group.alert-action-group
    ]
  name                = var.Analysis_Backup_Storage_Account_Alert_name
  resource_group_name = data.azurerm_resource_group.rg.name
  scopes              = [azurerm_storage_account.Analysis-service-backup.id]
  description         = var.alert_discription

  criteria {
    metric_namespace = var.metric_namespace
    metric_name      = var.metric_name
    aggregation      = var.aggregation
    operator         = var.operator
    threshold        = var.threshold
    #window_size      = var.window_size

    
  }

  action {
    action_group_id = azurerm_monitor_action_group.alert-action-group.id
  }
}


#code to create metric alert for BootDiagnostic storage account
resource "azurerm_monitor_metric_alert" "BootDiagnosticAlert" {
    depends_on = [
        azurerm_storage_account.Boot-Diagnostic-SA,
        azurerm_monitor_action_group.alert-action-group
    ]
  name                = var.Boot_Diagnostic_Alert_name
  resource_group_name = data.azurerm_resource_group.rg.name
  scopes              = [azurerm_storage_account.Boot-Diagnostic-SA.id]
  description         = var.alert_discription

  criteria {
    metric_namespace = var.metric_namespace
    metric_name      = var.metric_name
    aggregation      = var.aggregation
    operator         = var.operator
    threshold        = var.threshold
    #window_size      = var.window_size

    
  }

  action {
    action_group_id = azurerm_monitor_action_group.alert-action-group.id
  }
}


#code to create metric alert for Key vault
  resource "azurerm_monitor_metric_alert" "KeyvaultAlert" {
  name                = var.key_vault_Alert_name
  depends_on = [
        azurerm_key_vault.keyvault,
        azurerm_monitor_action_group.alert-action-group
    ]
  resource_group_name = data.azurerm_resource_group.rg.name
  scopes              = [azurerm_key_vault.keyvault.id]
  description         = var.alert_discription

  criteria {
    metric_namespace = var.metric_namespace1
    metric_name      = var.metric_name_vault
    aggregation      = var.aggregation
    operator         = var.operator
    threshold        = var.threshold

    
  }

  action {
    action_group_id = azurerm_monitor_action_group.alert-action-group.id
  }
}
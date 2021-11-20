data "azurerm_resource_group" "rg" {
    name = var.rg_name
  
}


data "azurerm_log_analytics_workspace" "LogAnalyticsWp" {
    name = var.log_analytics_wp_name
    resource_group_name = data.azurerm_resource_group.rg.name
  
}

data "azurerm_storage_account" "Boot-Diagnostic-SA" {
    name = var.Boot_Diagnostic_SA_name
    resource_group_name = data.azurerm_resource_group.rg.name
  
}


data "azurerm_key_vault" "keyvault" {
    name = var.keyvault_name
    resource_group_name = data.azurerm_resource_group.rg.name
}

data "azurerm_network_interface" "nic" {
  name                = var.nic-name
  resource_group_name = data.azurerm_resource_group.rg.name
}




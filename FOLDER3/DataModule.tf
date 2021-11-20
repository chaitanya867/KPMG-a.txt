data "azurerm_resource_group" "rg" {
    name = var.rg_name
  
}

data "azurerm_virtual_network" "vnet" {
    name = var.vnet_name
    resource_group_name = data.azurerm_resource_group.rg.name
    
}

data "azurerm_subnet" "subnet" {
    name = var.subnet_name
    resource_group_name = data.azurerm_resource_group.rg.name
    virtual_network_name = data.azurerm_virtual_network.vnet.name
  
}

data "azurerm_log_analytics_workspace" "LogAnalyticsWp" {
    name = var.log_analytics_wp_name
    resource_group_name = data.azurerm_resource_group.rg.name
  
}

data "azurerm_storage_account" "StorageAccount" {
    name = var.storage-account-name
    resource_group_name = data.azurerm_resource_group.rg.name
  
}



data "azurerm_key_vault" "keyvault" {
    name = var.keyvault_name
    resource_group_name = data.azurerm_resource_group.rg.name
}

/*
data "azurerm_key_vault_secret" "existing_secret" {
    name = var.secret_name
    key_vault_id = data.azurerm_key_vault.keyvault.id
}
*/
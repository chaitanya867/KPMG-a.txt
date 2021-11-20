data "azurerm_resource_group" "rg" {
    name = var.rg_name
  
}


data "azurerm_log_analytics_workspace" "LogAnalyticsWp" {
    name = var.log_analytics_wp_name
    resource_group_name = data.azurerm_resource_group.rg.name
  
}

data "azurerm_network_interface" "nic" {
  count = length(var.nic-name)
  name                = element(var.nic-name , count.index)
  resource_group_name = data.azurerm_resource_group.rg.name
}
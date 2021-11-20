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

data "azurerm_network_security_group" "nsg" {
    name = var.nsg_name
    resource_group_name = data.azurerm_resource_group.rg.name
  
}

data "azurerm_route_table" "RouteTable" {
    name = var.Route_table_name
    resource_group_name = data.azurerm_resource_group.rg.name
  
}

data "azurerm_log_analytics_workspace" "LogAnalyticsWp" {
    name = var.log_analytics_wp_name
    resource_group_name = data.azurerm_resource_group.rg.name
  
}

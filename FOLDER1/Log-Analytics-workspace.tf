#code to create log analytics workspace 

resource "azurerm_log_analytics_workspace" "log_analytics_workspace" {
    depends_on = [
      azurerm_resource_group.rg,
    ]
  name                = var.log_analytics_wp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  
}
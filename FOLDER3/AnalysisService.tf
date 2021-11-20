#code to create analysis_services_server
resource "azurerm_analysis_services_server" "server" {
  name                    = var.analysis_service_name
  location                = data.azurerm_resource_group.rg.location
  resource_group_name     = data.azurerm_resource_group.rg.name
  sku                     = var.sku
  backup_blob_container_uri = var.backup_container_url
  tags                    = var.tags
}

#code to Create Key Vault
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  name                        = var.keyvault_name
  location                    = data.azurerm_resource_group.rg.location
  resource_group_name         = data.azurerm_resource_group.rg.name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled

  sku_name = var.sku_name
  tags = var.tags

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = var.key_permissions

    secret_permissions = var.secret_permissions

  }
}


#code to create private endpoint for keyvault (subresource = vault)
resource "azurerm_private_endpoint" "keyvaultEndpoint" {
    depends_on = [
      azurerm_key_vault.keyvault,
      azurerm_private_dns_zone.dns,

    ]
  name                = var.keyvaultEndpoint_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  subnet_id           = data.azurerm_subnet.subnet.id

  private_service_connection {
    name                           = var.private_service_connection_keyvault
    private_connection_resource_id = azurerm_key_vault.keyvault.id
    subresource_names              = [var.vault_subresource_name]
    is_manual_connection           = var.is_manual_connection
  }
  private_dns_zone_group {
      name = var.vault_private_dns_zone_group
      private_dns_zone_ids = [azurerm_private_dns_zone.dns[2].id]
  }
}

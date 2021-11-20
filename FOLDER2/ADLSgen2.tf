#code to create ADLS storage account
resource "azurerm_storage_account" "StorageAccount" {
  name                     = var.storage-account-name
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
  is_hns_enabled           = var.is_hns_enabled
  access_tier              = var.access_tier
  tags                     = var.tags
}

#code to create private endpoint for Storage account (subresouce = blob)
resource "azurerm_private_endpoint" "BlobEndpoint" {
    depends_on = [
      azurerm_storage_account.StorageAccount,
      azurerm_private_dns_zone.dns,

    ]
  name                = var.blobendpoint
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  subnet_id           = data.azurerm_subnet.subnet.id

  private_service_connection {
    name                           = var.blob_private_service_connection
    private_connection_resource_id = azurerm_storage_account.StorageAccount.id
    subresource_names              = [var.subresource1]
    is_manual_connection           = var.is_manual_connection
  }
  private_dns_zone_group {
      name = var.blob_dns_zone_group
      private_dns_zone_ids = [azurerm_private_dns_zone.dns[0].id]
  }
}



#code to create private endpoint for Storage account (subresouce = dfs)
resource "azurerm_private_endpoint" "DfsEndpoint" {
    depends_on = [
      azurerm_storage_account.StorageAccount,
      azurerm_private_dns_zone.dns,
      
    ]
  name                =  var.dfsendpoint
  location            =  data.azurerm_resource_group.rg.location
  resource_group_name =  data.azurerm_resource_group.rg.name
  subnet_id           =  data.azurerm_subnet.subnet.id

  private_service_connection {
    name                           = var.dfs_private_service_connection
    private_connection_resource_id = azurerm_storage_account.StorageAccount.id
    subresource_names              = [var.subresource2]
    is_manual_connection           = var.is_manual_connection
  }
  private_dns_zone_group {
      name = var.dfs_dns_zone_group
      private_dns_zone_ids = [azurerm_private_dns_zone.dns[1].id]
  }
}
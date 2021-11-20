
#code to create storage data lake gen2 filesystem
resource "azurerm_storage_data_lake_gen2_filesystem" "ADLSgen2" {
  name               = var.ADLSgen2-name
  storage_account_id = data.azurerm_storage_account.StorageAccount.id
  }


resource "azurerm_storage_account_network_rules" "netrule" {
  resource_group_name  = data.azurerm_resource_group.rg.name
  storage_account_name = data.azurerm_storage_account.StorageAccount.name

  default_action = var.default_action
  bypass = ["Metrics",
            "Logging",
            "AzureServices"]

  depends_on = [
    azurerm_storage_data_lake_gen2_filesystem.ADLSgen2
  ]
}


#code to create synapse workspace
resource "azurerm_synapse_workspace" "synapse_workspace" {  
  depends_on = [
    azurerm_storage_data_lake_gen2_filesystem.ADLSgen2
  ]
  name                                 = var.synapse_workspace_name
  resource_group_name                  = data.azurerm_resource_group.rg.name
  location                             = data.azurerm_resource_group.rg.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.ADLSgen2.id
  sql_administrator_login              = var.sql_administrator_login
  sql_administrator_login_password     = var.sql_administrator_login_password
  managed_virtual_network_enabled      = var.managed_virtual_network_enabled
  tags = var.tags
}


#code to create private_dns_zone which requires to create private endpoint
resource "azurerm_private_dns_zone" "dns" {
  count               = length(var.DNS_zone_name)
  name                = element(var.DNS_zone_name , count.index)
  resource_group_name = data.azurerm_resource_group.rg.name
}


#code to create link for private_dns_zone_to_virtual_network_
resource "azurerm_private_dns_zone_virtual_network_link" "DNS_VNET_link" {
  depends_on = [
    azurerm_private_dns_zone.dns
  ]
  count                 = length(var.DNS_zone_name)
  name                  = element(var.linkname , count.index)
  resource_group_name   = data.azurerm_resource_group.rg.name
  private_dns_zone_name = azurerm_private_dns_zone.dns[count.index].name
  virtual_network_id    = data.azurerm_virtual_network.vnet.id
}


#code to create private endpoint for synapse (subresource name = sql)
resource "azurerm_private_endpoint" "sqlEndpoint" {
    depends_on = [
      azurerm_synapse_workspace.synapse_workspace,
      azurerm_private_dns_zone.dns,
      
    ]
  name                =  var.sqlEndpoint_name
  location            =  data.azurerm_resource_group.rg.location
  resource_group_name =  data.azurerm_resource_group.rg.name
  subnet_id           =  data.azurerm_subnet.subnet.id

  private_service_connection {
    name                           = var.sql_private_service_connection
    private_connection_resource_id = azurerm_synapse_workspace.synapse_workspace.id
    subresource_names              = [var.subresource1]
    is_manual_connection           = var.is_manual_connection
  }
  private_dns_zone_group {
      name = var.sql_dns_zone_group
      private_dns_zone_ids = [azurerm_private_dns_zone.dns[0].id]
  }
}


#code to create private endpoint for synapse (subresource name = ondemand-sql)
resource "azurerm_private_endpoint" "ondemand-sqlEndpoint" {
    depends_on = [
      azurerm_synapse_workspace.synapse_workspace,
      azurerm_private_dns_zone.dns,
      
    ]
  name                =  var.ondemandsqlEndpoint_name
  location            =  data.azurerm_resource_group.rg.location
  resource_group_name =  data.azurerm_resource_group.rg.name
  subnet_id           =  data.azurerm_subnet.subnet.id

  private_service_connection {
    name                           = var.on-demand-sql_private_service_connection
    private_connection_resource_id = azurerm_synapse_workspace.synapse_workspace.id
    subresource_names              = [var.subresource2]
    is_manual_connection           = var.is_manual_connection
  }
  private_dns_zone_group {
      name = var.sql_dns_zone_group
      private_dns_zone_ids = [azurerm_private_dns_zone.dns[0].id]
  }
}


#code to create private endpoint for synapse (subresource name = dev)
resource "azurerm_private_endpoint" "devEndpoint" {
    depends_on = [
      azurerm_synapse_workspace.synapse_workspace,
      azurerm_private_dns_zone.dns,
      
    ]
  name                =  var.devEndpoint_name
  location            =  data.azurerm_resource_group.rg.location
  resource_group_name =  data.azurerm_resource_group.rg.name
  subnet_id           =  data.azurerm_subnet.subnet.id

  private_service_connection {
    name                           = var.dev_private_service_connection
    private_connection_resource_id = azurerm_synapse_workspace.synapse_workspace.id
    subresource_names              = [var.subresource3]
    is_manual_connection           = var.is_manual_connection
  }
  private_dns_zone_group {
      name = var.dev_dns_zone_group
      private_dns_zone_ids = [azurerm_private_dns_zone.dns[1].id]
  }
}

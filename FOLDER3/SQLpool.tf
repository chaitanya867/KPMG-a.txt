#code to create synapse_sql_pool
resource "azurerm_synapse_sql_pool" "sql_pool" {
    depends_on = [
      azurerm_synapse_workspace.synapse_workspace
    ]
    
  name                 = var.sql_pool_name
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace.id
  sku_name             = var.sku_name
  create_mode          = var.create_mode
  collation            = var.collation 
}
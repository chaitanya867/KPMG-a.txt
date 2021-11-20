
#code to create apache spark pool
resource "azurerm_synapse_spark_pool" "spark_pool" {
    depends_on = [
      azurerm_synapse_workspace.synapse_workspace
    ]
  name                 = var.spark_pool_name
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace.id
  node_size_family     = var.node_size_family
  node_size            = var.node_size
  cache_size           = var.cache_size

  auto_scale {
    max_node_count = var.max_node_count
    min_node_count = var.min_node_count
  }

  tags =                var.tags
  
}


resource "azurerm_synapse_firewall_rule" "synapse_firewall_rule" {
  depends_on = [
    azurerm_synapse_spark_pool.spark_pool
  ]
  name                 = var.synapse_firewall_rule_name
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace.id
  start_ip_address     = var.start_ip_address
  end_ip_address       = var.end_ip_address
}
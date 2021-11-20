#code to create 
resource "azurerm_monitor_diagnostic_setting" "nic-diagnostic" {
  count              = 7
  name               = element(var.nic_dia_name , count.index)
  target_resource_id = data.azurerm_network_interface.nic[count.index].id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.LogAnalyticsWp.id
 
  metric {
    category = var.metric_category
  }
}
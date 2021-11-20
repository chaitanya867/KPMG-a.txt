#code to create diagnostic_setting for synapse workspace
resource "azurerm_monitor_diagnostic_setting" "synapse-wp-diagnostic" {
  depends_on   = [
    azurerm_synapse_workspace.synapse_workspace
  ]
  name               = var.synapse_wp_dia_name
  target_resource_id = azurerm_synapse_workspace.synapse_workspace.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.LogAnalyticsWp.id

  log {
    category = var.log_category
    enabled  = var.log_enabled

  }
}


#code to create diagnostic_setting for sql-pool
resource "azurerm_monitor_diagnostic_setting" "sql-pool-diagnostic" {
  depends_on   = [
    azurerm_synapse_sql_pool.sql_pool
  ]
  name               = var.sql_pool_dia_name
  target_resource_id = azurerm_synapse_sql_pool.sql_pool.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.LogAnalyticsWp.id

 
  metric {
    category = var.metric_category_sql_pool
  }
}


#code to create diagnostic_setting for apachespark-pool
resource "azurerm_monitor_diagnostic_setting" "apachespark-pool-diagnostic" {
  depends_on   = [
    azurerm_synapse_spark_pool.spark_pool
  ]
  name               = var.apachespark-pool_dia_name
  target_resource_id = azurerm_synapse_spark_pool.spark_pool.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.LogAnalyticsWp.id

  log {
    category = var.log_category_apache_spark_pool
    enabled  = var.log_enabled

  }
 
}


#code to create diagnostic_setting for Analysis-service
resource "azurerm_monitor_diagnostic_setting" "Analysis-service-diagnostic" {
  depends_on   = [
    azurerm_analysis_services_server.server
  ]
  name               = var.Analysis-service_dia_name
  target_resource_id = azurerm_analysis_services_server.server.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.LogAnalyticsWp.id

  log {
    category = var.log_category_analysis_service
    enabled  = var.log_enabled

  }
 
  metric {
    category = var.metric_category_analysis_service
  }
}


#code to create alert_action_group
resource "azurerm_monitor_action_group" "alert-action-group" {
  name                = var.action_grp_name
  resource_group_name = data.azurerm_resource_group.rg.name
  short_name          = var.short_name

  email_receiver {
      name = var.alert_reciever_name
      email_address = var.reciever_email
  }
}

#code to create Synapse wp Alert
resource "azurerm_monitor_metric_alert" "SynapsewpAlert" {
    depends_on = [
        azurerm_synapse_workspace.synapse_workspace,
        azurerm_monitor_action_group.alert-action-group
    ]
  name                = var.Synapsewp_Alert_name
  resource_group_name = data.azurerm_resource_group.rg.name
  scopes              = [azurerm_synapse_workspace.synapse_workspace.id]
  description         = var.alert_discription

  criteria {
    metric_namespace = var.metric_namespace_synwp
    metric_name      = var.metric_name_synwp
    aggregation      = var.aggregation_syn
    operator         = var.operator
    threshold        = var.threshold
    
  }

  action {
    action_group_id = azurerm_monitor_action_group.alert-action-group.id
  }
}


#code to create alert for apache spark pool
resource "azurerm_monitor_metric_alert" "apache-spark-pool-alert" {
    depends_on = [
        azurerm_synapse_spark_pool.spark_pool,
        azurerm_monitor_action_group.alert-action-group
    ]
  name                = var.spark_pool_Alert_name
  resource_group_name = data.azurerm_resource_group.rg.name
  scopes              = [azurerm_synapse_spark_pool.spark_pool.id]
  description         = var.alert_discription

  criteria {
    metric_namespace = var.metric_namespace_apachepool
    metric_name      = var.metric_name_apachepool
    aggregation      = var.aggregation
    operator         = var.operator
    threshold        = var.threshold
    
  }

  action {
    action_group_id = azurerm_monitor_action_group.alert-action-group.id
  }
}

/*
#code to create alert for sql spark pool
resource "azurerm_monitor_metric_alert" "sql-pool-alert" {
    depends_on = [
        azurerm_synapse_sql_pool.sql_pool,
        azurerm_monitor_action_group.alert-action-group
    ]
  name                = var.sql_pool_Alert_name
  resource_group_name = data.azurerm_resource_group.rg.name
  scopes              = [azurerm_synapse_sql_pool.sql_pool.id]
  description         = var.alert_discription

  criteria {
    metric_namespace = var.metric_namespace
    metric_name      = var.metric_name
    aggregation      = var.aggregation
    operator         = var.operator
    threshold        = var.threshold
    
  }

  action {
    action_group_id = azurerm_monitor_action_group.alert-action-group.id
  }
}


#code to create alert for analysis-service
resource "azurerm_monitor_metric_alert" "analysis-service-alert" {
    depends_on = [
        azurerm_analysis_services_server.server,
        azurerm_monitor_action_group.alert-action-group
    ]
  name                = var.analysis_service_Alert_name
  resource_group_name = data.azurerm_resource_group.rg.name
  scopes              = [azurerm_analysis_services_server.server.id]
  description         = var.alert_discription

  criteria {
    metric_namespace = var.metric_namespace
    metric_name      = var.metric_name
    aggregation      = var.aggregation
    operator         = var.operator
    threshold        = var.threshold
    
  }

  action {
    action_group_id = azurerm_monitor_action_group.alert-action-group.id
  }
}

*/
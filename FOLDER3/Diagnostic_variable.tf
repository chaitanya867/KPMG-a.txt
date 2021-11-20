variable "synapse_wp_dia_name" {
    description = "specify synapse_wp_dia_name"
    type = string
    default = "storage-account-diagostic"

}

variable "sql_pool_dia_name" {
    description = "specify sql_pool_dia_name"
    type = string
    default = "sql-pool-diagostic"

}

variable "apachespark-pool_dia_name" {
    description = "specify apachespark-pool_dia_name"
    type = string
    default = "apache-spark-pool-diagostic"

}

variable "Analysis-service_dia_name" {
    description = "specify Analysis-service_dia_name"
    type = string
    default = "Analysis-service-diagnostic"

}

variable "metric_category_sql_pool" {
    description = "specify metric_category"
    type = string
    default = "AllMetrics"

}

variable "log_category" {
    description = "specify log_category"
    type = string
    default = "GatewayApiRequests"
}


variable "log_category_sql_pool" {
    description = "specify log_category"
    type = string
    default = "SQLInsights"
}

variable "log_category_apache_spark_pool" {
    description = "specify log_category"
    type = string
    default = "BigDataPoolAppsEnded"
}

variable "log_category_analysis_service" {
    description = "specify log_category"
    type = string
    default = "Service"
}


variable "log_enabled" {
    description = "specify log_enabled or not"
    type = bool
    default = true

}

variable "metric_category_analysis_service" {
    description = "specify metric_category"
    type = string
    default = "AllMetrics"

}
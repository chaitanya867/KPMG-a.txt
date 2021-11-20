variable "action_grp_name" {
    description = "specify action_grp_name"
    type = string
    default = "Alert-Action-Group-2"

}

variable "short_name" {
    description = "specify short_name"
    type = string
    default = "actiongrp"

}

variable "alert_reciever_name" {
    description = "specify alert_reciever_name"
    type = string
    default = "client1"

}

variable "reciever_email" {
    description = "specify reciever_email"
    type = string
    default = "chaitanyachougule7276@gmail.com"

}

variable "Synapsewp_Alert_name" {
    description = "specify Synapsewp_Alert_name"
    type = string
    default = "SynapsewpAlert"

}

variable "alert_discription" {
    description = "specify alert_discription"
    type = string
    default = "Action will be triggered when used capacity is greater than 50."

}

variable "metric_namespace_synwp" {
    description = "specify metric_namespace"
    type = string
    default = "Microsoft.Synapse/workspaces"

}

variable "metric_namespace_apachepool" {
    description = "specify metric_namespace"
    type = string
    default = "Microsoft.Synapse/workspaces/bigDataPools"
}


variable "metric_name_synwp" {
    description = "specify metric_name"
    type = string
    default = "BuiltinSqlPoolDataProcessedBytes"

}

variable "metric_name_apachepool" {
    description = "specify metric_name"
    type = string
    default = "BigDataPoolAllocatedMemory"

}

variable "aggregation_syn" {
    description = "specify aggregation"
    type = string
    default = "Total"

}

variable "aggregation" {
    description = "specify aggregation"
    type = string
    default = "Average"

}

variable "operator" {
    description = "specify operator"
    type = string
    default = "GreaterThan"

}

variable "Analysis_service_Alert_name" {
    description = "specify Analysis_service_Alert_name"
    type = string
    default = "Analysis_service_Alert"

}

variable "threshold" {
    description = "specify threshold"
    type = string
    default = "50"

}

variable "spark_pool_Alert_name" {
    description = "specify spark_pool_Alert_name"
    type = string
    default = "spark_pool_Alert"

}

variable "sql_pool_Alert_name" {
    description = "specify sql_pool_Alert_name"
    type = string
    default = "sql_pool_Alert"

}



variable "action_grp_name" {
    description = "specify action_grp_name"
    type = string
    default = "Alert-Action-Group"

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

variable "Storage_Account_Alert_name" {
    description = "specify Storage_Account_Alert_name"
    type = string
    default = "Storage-Account-Alert"

}

variable "alert_discription" {
    description = "specify alert_discription"
    type = string
    default = "Action will be triggered when used capacity is greater than 50."

}

variable "metric_namespace" {
    description = "specify metric_namespace"
    type = string
    default = "Microsoft.Storage/storageAccounts"

}


variable "metric_namespace1" {
    description = "specify metric_namespace"
    type = string
    default = "Microsoft.KeyVault/vaults"

}

variable "metric_name" {
    description = "specify metric_name storage accounts"
    type = string
    default = "Availability"

}

variable "metric_name_vault" {
    description = "specify metric_name for vault"
    type = string
    default = "ServiceApiLatency"

}
 
variable "window_size" {
    description = "specify window_size"
    type = string
    default = "PT1M"

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

variable "Analysis_Backup_Storage_Account_Alert_name" {
    description = "specify Analysis_Backup_Storage_Account_Alert_name"
    type = string
    default = "Analysis_Backup_Storage_Account_Alert"

}

variable "threshold" {
    description = "specify threshold"
    type = string
    default = "50"

}

variable "Boot_Diagnostic_Alert_name" {
    description = "specify Boot_Diagnostic_Alert_name"
    type = string
    default = "Boot_Diagnostic_Alert"

}

variable "key_vault_Alert_name" {
    description = "specify key_vault_Alert_name"
    type = string
    default = "key_vault_Alert"

}



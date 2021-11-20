variable "storage_account_dia_name" {
    description = "specify ADLS-storage_account_diagnostic_setting_name"
    type = string
    default = "storage-account-diagostic"

}

variable "metric_category" {
    description = "specify metric_category for storage account"
    type = string
    default = "Transaction"

}

variable "Analysis_service_backup_dia_name" {
    description = "specify Analysis_service_backup-storage_account_diagnostic_setting_name"
    type = string
    default = "Analysis-service-backup-diagnostic"

}

variable "key_vault_dia_name" {
    description = "specify key vault  diagnostic_setting_name"
    type = string
    default = "key-vault-diagnostic"

}

variable "KVmetric_category" {
    description = "specify metric_category for key vault"
    type =  string
    default = "AllMetrics"

}


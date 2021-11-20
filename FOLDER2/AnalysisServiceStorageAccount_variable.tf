variable "analysisbackup" {
    description = "specify analysis service backup-storage account name"
    type = string
    default = "analysisservicebackup7"

}


variable "analysis-service-backup-container" {
    description = "specify analysis service backup-storage container name"
    type = string
    default = "backup01"

}


variable "container_access_type" {
    description = "specify container_access_type"
    type = string
    default = "container"

}



variable "allow_blob_public_access" {
    description = "specify allow_or_deny_blob_public_access"
    type = string
    default = true

}

variable "sku_name" {
    description = "specifysku_name"
    type = string
    default = "standard"

}

variable "default_action" {
    description = "specify default_action for firewall"
    type = string
    default = "Deny"

}

variable "bypass" {
    description = "specify bypass for firewall"
    type = list
    default = [
    "Metrics",
    "Logging",
    "AzureServices"
  ]
}
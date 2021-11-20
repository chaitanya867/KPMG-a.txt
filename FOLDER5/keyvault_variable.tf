variable "enabled_for_disk_encryption" {
    description = "specify enabled_or_disabled for_disk_encryption"
    type = bool
    default = true

}

variable "soft_delete_retention_days" {
    description = "specify soft_delete_retention_days"
    type = string
    default = "7"

}

variable "purge_protection_enabled" {
    description = "specify purge_protection_enabled or not"
    type = bool
    default = false

}

variable "key_permissions" {
    description = "specify key_permissions"
    type = list
    default = ["create" , "get"]

}

variable "secret_permissions" {
    description = "specify secret_permissions"
    type = list
    default = ["set" , "get" , "list" , "delete" , "purge" , "recover"]

}

variable "sku_name" {
    description = "specifysku_name"
    type = string
    default = "standard"

}

variable "tags" {
    description = "specify tags for storage-account"
    type =  map(string)
    default = {
        CA_Application  = "Azure Synapse",
        CA_BCRating     = "BC2",
        CA_BusinessUnit = "BES",
        CA_CreatedBy    = "lloydlim@Kpmg.ca",
        CA_DCRating     = "Confidential",
        CA_Environment  = "POC",
        CA_Owner        = "Mark Newman",
        CA_Purpose      = "Enterprise Analytics (EA) for BES",
        CA_WiseID       = "5551"

    }

}


variable "bypass" {
    description = "specify bypass"
    type = string
    default = "AzureServices"
}

variable "default_action" {
    description = "specify default_action"
    type = string
    default = "Deny"
}
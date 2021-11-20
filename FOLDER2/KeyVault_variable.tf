
variable "keyvault_name" {
    description = "specify keyvault_name"
    type = string
    default = "kv-kpmgcadwpoc01"

}

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

variable "keyvaultEndpoint_name" {
    description = "specify keyvaultEndpoint_name"
    type = string
    default = "kv-kpmgcadwpoc01"

}

variable "vault_private_service_connection_name" {
    description = "vault_private_service_connection_name"
    type = string
    default = "dfs-private-service-connection"

}

variable "vault_subresource_name" {
    description = "specify vault_subresource_name"
    type = string
    default = "vault"

}

variable "vault_private_dns_zone_group" {
    description = "specify vault_private_dns_zone_group-name"
    type = string
    default = "vault_dns_zone"

}

variable "private_service_connection_keyvault" {
    description = "specify private_service_connection_keyvault-name"
    type = string
    default = "vault"

}


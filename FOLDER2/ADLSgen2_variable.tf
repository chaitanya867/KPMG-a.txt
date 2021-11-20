variable "storage-account-name" {
    description = "specify storage-account name"
    type =  string
    default = "stkpmgcadwpoc0420217279"

}

variable "account_tier" {
    description = "specify account-tier"
    type =  string
    default = "Standard"

}

variable "account_replication_type" {
    description = "specify account_replication_type"
    type =  string
    default = "LRS"

}

variable "account_kind" {
    description = "specify account_kind"
    type =  string
    default = "BlobStorage"

}

variable "is_hns_enabled" {
    description = "specify hns_enabled or disabled"
    type =  bool
    default = true

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

variable "ADLSgen2-name" {
    description = "specify ADLSgen2-name"
    type =  string
    default = "Dlskpmgcadwpoc042021"

}

variable "access_tier" {
    description = "specify access_tier"
    type =  string
    default = "Cool"

}

variable "is_manual_connection" {
    description = "specify is_manual_connection"
    type =  string
    default = false

}

variable "subresource1" {
    description = "specify subresource"
    type =  string
    default = "blob"

}


variable "subresource2" {
    description = "specify subresource"
    type =  string
    default = "dfs"

}

variable "blobendpoint" {
    description = "specify blobendpoint name"
    type =  string
    default = "blobendpoint"

}

variable "dfsendpoint" {
    description = "specify dfsendpoint-name"
    type =  string
    default = "dfsendpoint"

}

variable "blob_private_service_connection" {
    description = "specify blob_private_service_connection name"
    type =  string
    default = "blob_private_service_connection"

}

variable "dfs_private_service_connection" {
    description = "specify dfs_private_service_connection-name"
    type =  string
    default = "dfs_private_service_connection"

}

variable "dfs_dns_zone_group" {
    description = "specify dfs_dns_zone_group-name"
    type =  string
    default = "dfs_dns_zone"

}
variable "blob_dns_zone_group" {
    description = "specify blob_dns_zone_group-name"
    type =  string
    default = "blob_dns_zone"

}


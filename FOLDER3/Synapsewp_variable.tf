variable "synapse_workspace_name" {
    description = "specify synapse_workspace_name"
    type = string
    default = "syndw-kpmgcapoc01"

}


variable "sql_administrator_login" {
    description = "specify sql_administrator_login name"
    type = string
    default = "sqladminuser"

}


variable "sql_administrator_login_password" {
    description = "specify sql_administrator_login_password"
    type = string
    default = "Password@123"

}


variable "managed_virtual_network_enabled" {
    description = "specify managed_virtual_network_enabled_or_disabled"
    type = bool
    default = true

}


variable "ADLSgen2-name" {
    description = "specify ADLSgen2-name"
    type = string
    default = "dlskpmgcadwpoc042021"

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

variable "tags" {
    description = "specify tags"
    type = map(string)
    default = {
        CA_Application  = "Azure Synapse",
        CA_BCRating     = "BC2",
        CA_BusinessUnit = "BES",
        CA_CreatedBy    = "lloydlim@Kpmg.ca",
        CA_DCRating     = "Confidential",
        CA_Environment  = "POC",
        CA_Owner        = "Mark Newman",
        CA_Purpose= "Enterprise Analytics (EA) for BES",
        CA_WiseID       = "5551"

    }

}


variable "subresource1" {
    description = "specify subresource"
    type = string
    default = "sql"

}

variable "subresource2" {
    description = "specify subresource"
    type = string
    default = "sqlondemand"

}

variable "subresource3" {
    description = "specify subresource"
    type = string
    default = "dev"

}

variable "sql_private_service_connection" {
    description = "specify sql_private_service_connection_name"
    type = string
    default = "sql_private_service_connection"

}

variable "on-demand-sql_private_service_connection" {
    description = "specify on-demand-sql_private_service_connection name"
    type = string
    default = "on-demand-sql_private_service_connection"

}

variable "dev_private_service_connection" {
    description = "specify sql_private_service_connectio nname"
    type = string
    default = "dev_private_service_connection"

}


variable "DNS_zone_name" {
    description = "specify DNS zone name"
    type = list
    default = ["privatelink.sql.azuresynapse.net" , "privatelink.dev.azuresynapse.net" ]

}

variable "linkname" {
    description = "specify linkname"
    type = list
    default = ["synapseprivatelink1" , "synapseprivatelink2"]

}


variable "sqlEndpoint_name" {
    description = "specify sqlEndpoint_name"
    type = string
    default = "sqlEndpoint"

}

variable "is_manual_connection" {
    description = "specify is_manual_connection or not"
    type = bool
    default = false

}

variable "ondemandsqlEndpoint_name" {
    description = "specify ondemandsqlEndpoint_name"
    type = string
    default = "ondemand-sqlEndpoint"

}
variable "devEndpoint_name" {
    description = "specify devEndpoint_name"
    type = string
    default = "dev-Endpoint"

}

variable "sql_dns_zone_group" {
    description = "specify sql_dns_zone_group"
    type = string
    default = "sql_dns_zone"

}

variable "dev_dns_zone_group" {
    description = "specify dev_dns_zone_group"
    type = string
    default = "dev_dns_zone"

}
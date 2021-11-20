
variable "rg_name" {
    description = "specify resource group name"
    type = string
    default = "KPMG-CA-DWSynapsePOC-RG"

}

variable "vnet_name" {
    description = "specify network name"
    type = string
    default = "vnet-KPMG-CA-DWITSCore"

}

variable "subnet_name" {
    description = "specify subnet name"
    type = string
    default = "snet-poc"

}

variable "nsg_name" {
    description = "specify Network Security Group name"
    type = string
    default = "nsg-kpmgcadwitscore"

}

variable "Route_table_name" {
    description = "specify route table name"
    type = string
    default = "rt-KPMG-CA-DWITSCore"
}

variable "log_analytics_wp_name" {
    type=string
    description = "specify log_analytics_workspace_name"
    default = "log-kpmgca-dwcore"

}

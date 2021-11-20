variable "rg_name" {
    description = "specify resource group name"
    type =  string
    default = "KPMG-CA-DWSynapsePOC-RG"

}

variable "vnet_name" {
    description = "specify network name"
    type =  string
    default = "vnet-KPMG-CA-DWITSCore"

}

variable "subnet_name" {
    description = "specify subnet name"
    type =  string
    default = "snet-poc"

}


variable "log_analytics_wp_name" {
    type=string
    description = "specify log_analytics_workspace_name"
    default = "log-kpmgca-dwcore"

}

variable "storage-account-name" {
    description = "specify storage-account name"
    type =  string
    default = "stkpmgcadwpoc0420217271"

}



variable "keyvault_name" {
    description = "specify keyvault_name"
    type =  string
    default = "kv-kpmgcadwpoc01"

}

variable "secret_name" {
    description = "specify secret-name"
    type =  string
    default = "sqlpass"

}



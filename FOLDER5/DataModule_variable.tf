variable "rg_name" {
    description = "specify resource group name"
    type =  string
    default = "KPMG-CA-DWSynapsePOC-RG"

}

variable "log_analytics_wp_name" {
    type=string
    description = "specify log_analytics_workspace_name"
    default = "log-kpmgca-dwcore"

}

variable "Boot_Diagnostic_SA_name" {
    description = "specify Boot_Diagnostic_Storage Account_name"
    type = string
    default = "stkpmgcadwpoc0420217276"

}

variable "keyvault_name" {
    description = "specify keyvault_name"
    type = string
    default = "kv-kpmgcadwpoc01"

}

variable "nic-name" {
    description = "specify nic card name"
    type = string
    default = "SHIR-nic"

}


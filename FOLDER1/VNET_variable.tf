variable "vnet_name" {
    description = "specify network name"
    type = string
    default = "vnet-KPMG-CA-DWITSCore"

}

variable "Vnet_AddressPrefix" {
    description = "specify address range for vnet"
    type = string
    default = "10.135.28.0/25"

}

variable "subnet_name" {
    description = "specify subnet name"
    type = string
    default = "snet-poc"

}

variable "subnet_AddressPrefix" {
    description = "specify address range for subnet"
    type = string
    default = "10.135.28.0/27"

}

variable "enable_endpoint" {
    description = "enabling private enpoint network policies "
    type = bool
    default = true

}
variable "Route_table_name" {
    description = "specify route table name"
    type = string
    default = "rt-KPMG-CA-DWITSCore"
}

variable "Route_name" {
    description = "specify route name"
    type = list
    default = ["route1"]

}

variable "Route_AddressPrefix" {
    description = "specify Route Address Prefix"
    type = list
    default = ["10.135.28.0/25"]

}

variable "next_hop_type" {
    description = "specify next_hop_type"
    type = list
    default = ["VirtualAppliance"]

}

variable "next_hop_in_ip_address" {
    description = "specify next_hop_in_ip_address"
    type = list
    default = ["8.8.8.8"]

}

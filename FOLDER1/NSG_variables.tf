variable "nsg_name" {
    description = "specify Network Security Group name"
    type = string
    default = "nsg-kpmgcadwitscore"

}

variable "rule_name" {
    type=list
    description = "specify Network Security Group rule name"
    default = ["allowing_https"]

}

variable "priority" {
    type=list
    description = "specify priority for Network Security rule"
    default = ["100"]

}

variable "direction" {
    type=list
    description = "specify direction forNetwork Security Group rule"
    default = ["Outbound"]

}

variable "access" {
    type=list
    description = "specify acceess of Network Security Group rule"
    default = ["Allow"]

}

variable "protocol" {
    type=list
    description = "specify protocol for Network Security Group rule"
    default = ["Tcp"]
}

variable "source_port_range" {
    type=list
    description = "specify source_port_range for Network Security Group rule"
    default = ["*"]
}

variable "destination_port_range" {
    type=list
    description = "specify destination_port_range for Network Security Group rule"
    default = ["443"]

}

variable "source_address_prefix" {
    type=list
    description = "specify source_address_prefix"
    default = ["*"]

}

variable "destination_address_prefix" {
    type=list
    description = "specify destination_address_prefix"
    default = ["*"]
}



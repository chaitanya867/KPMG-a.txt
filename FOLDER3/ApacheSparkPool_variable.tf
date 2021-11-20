variable "spark_pool_name" {
    description = "specify spark_pool_name"
    type = string
    default = "sparkpool"

}

variable "node_size_family" {
    description = "specify node_size_family"
    type = string
    default = "MemoryOptimized"

}

variable "node_size" {
    description = "specify node_size"
    type = string
    default = "Medium"

}

variable "cache_size" {
    description = "specify cache_size"
    type = string
    default = "100"

}

variable "max_node_count" {
    description = "specify max_node_count"
    type = string
    default = "5"

}

variable "min_node_count" {
    description = "specify min_node_count"
    type = string
    default = "3"

}


variable "start_ip_address" {
    description = "specify min_node_count"
    type = string
    default = "0.0.0.0"

}

variable "end_ip_address" {
    description = "specify min_node_count"
    type = string
    default = "255.255.255.255"

}

variable "synapse_firewall_rule_name" {
    description = "specify min_node_count"
    type = string
    default = "synapse_firewall_rule"

}
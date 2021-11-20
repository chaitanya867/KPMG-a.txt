variable "sql_pool_name" {
    description = "specify sql_pool_name"
    type = string
    default = "sqlpool"

}

variable "sku_name" {
    description = "specify sku_name"
    type = string
    default =  "DW100c"

}

variable "create_mode" {
    description = "specify create_mode"
    type = string
    default = "Default"

}

variable "collation" {
    description = "specify collation"
    type = string
    default = "SQL_Latin1_General_CP1_CI_AS"

}
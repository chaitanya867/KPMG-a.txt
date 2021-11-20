variable "metric_category" {
    description = "specify metric_category for key vault"
    type =  string
    default = "AllMetrics"

}

variable "nic_dia_name" {
    description = "specify metric_category for key vault"
    type = list
    default = ["SHIT-VM-DS" , "Blob-endpoint-DS" , "dfs-enpoint-DS" , "sql-endpoint-DS" , "on-demand-sql-endpoint-DS" ,"dev-endpoint-DS" , "key-vault-endpoint-DS"]

}
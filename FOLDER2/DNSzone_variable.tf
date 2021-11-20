variable "DNS_zone_name" {
    description = "specify DNS zone name"
    type = list
    default = ["privatelink.blob.core.windows.net" , "privatelink.dfs.core.windows.net" , "privatelink.keyvault.core.windows.net"]

}

variable "linkname" {
    description = "specify linkname"
    type = list
    default = ["privatelink1" , "privatelink2" , "privatelink3"]

}


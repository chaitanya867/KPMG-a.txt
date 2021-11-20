variable "analysis_service_name" {
    description = "specify analysis_service_name"
    type = string
    default = "synaskpmgcadwpoc01"

}

variable "sku" {
    description = "specify sku"
    type = string
    default = "S0"

}

variable "backup_container_url" {
    description = "specify backup_container_url"
    type = string
    default = "https://analysisservicebackup7.blob.core.windows.net/backup01"

}



variable "vm-name" {
    description = "specify virtual machine name"
    type = string
    default = "caadcapp0603"

}

variable "size" {
    description = "specify  size of virtual machine"
    type = string
    default = "Standard_DS1_v2"

}

variable "username" {
    description = "specify admin username for SHIR virtual"
    type = string
    default = "kpmgpocvmadmin"

}

variable "password" {
    description = "specify password for SHIR virtual machine"
    type = string
    default = "Password@123"

}

variable "publisher" {
    description = "specify publisher of os image for SHIR virtual machine"
    type = string
    default = "Canonical"

}

variable "offer" {
    description = "specify offer of os image for SHIR virtual machine"
    type = string
    default = "UbuntuServer"

}

variable "sku" {
    description = "specify sku for SHIR virtual machine"
    type = string
    default = "16.04-LTS"

}

variable "image_version" {
    description = "specify image version for SHIR virtual machine"
    type = string
    default = "latest"

}
variable "storage_account_type" {
    description = "specify storage account type of os-disk for SHIR virtual machine"
    type = string
    default = "Standard_LRS"

}

variable "caching" {
    description = "specify caching for os-disk of SHIR virtual machine"
    type = string
    default = "ReadWrite"

}

variable "disable_password_authentication" {
    description = "specify password authentication enable or disable"
    type = bool
    default = false

}

variable "enabled" {
    description = "boot diagnostic enable or not"
    type = bool
    default = true
}


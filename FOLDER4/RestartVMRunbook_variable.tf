variable "automation_runbook_name" {
    description = "specify automation runbook_name"
    type = string
    default = "restart-vm"

}

variable "file_name" {
    description = "specify file_name"
    type = string
    default = "RESTART-VM.ps1"

}

variable "log_verbose" {
    description = "specify enable or disable log_verbose "
    type = bool
    default = true

}

variable "log_progress" {
    description = "specify enable or disable log_progress"
    type = bool
    default = true

}

variable "description" {
    description = "specify description"
    type = string
    default = "runbook for  restart vm"

}

variable "runbook_type" {
    description = "specify runbook_type"
    type = string
    default = "PowerShell"

}


variable "azurerm_automation_schedule_name" {
    description = "specify automation_schedule_name"
    type = string
    default = "automation_schedule_for_restartvm"

}

variable "frequency" {
    description = "specify frequency"
    type = string
    default = "Hour"

}

variable "interval" {
    description = "specify interval"
    type = string
    default = "10"

}

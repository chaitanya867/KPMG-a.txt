variable "dw-resume-file_name" {
    description = "specify data warehouse resume-file_name"
    type = string
    default = "ResumeDW.ps1"

}

variable "dw-stop-file_name" {
    description = "specify data warehouse stop-file_name"
    type = string
    default = "STOPDW.ps1"

}

variable "automation_runbook_dw_resume_name" {
    description = "specify automation_runbook_data warehouse_resume_name"
    type = string
    default = "automation_runbook_dw_resume"

}

variable "automation_runbook_dw_stop_name" {
    description = "specify automation_runbook_data warehouse_stop_name"
    type = string
    default = "automation_runbook_dw_stop"

}

variable "automation_dw_resume_schedule_name" {
    description = "specify automation_runbook_data warehouse_stop_name"
    type = string
    default = "automation_dw_resume_schedule"

}

variable "automation_dw_stop_schedule_name" {
    description = "specify automation_runbook_data warehouse_stop_name"
    type = string
    default = "automation_dw_stop_schedule"

}


variable "frequency1" {
    description = "specify frequency"
    type = string
    default = "Day"

}

variable "interval1" {
    description = "specify interval"
    type = string
    default = "2"

}

variable "resume_start_time" {
    description = "specify interval"
    type = string
    default = "2021-11-25T18:00:15+02:00"

}

variable "stop_start_time" {
    description = "specify interval"
    type = string
    default = "2021-11-26T18:00:15+02:00"

}
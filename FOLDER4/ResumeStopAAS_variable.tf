variable "AAS-resume-file_name" {
    description = "specify analysis-service-resume-file_name"
    default = "ResumeAAS.ps1"

}

variable "AAS-stop-file_name" {
    description = "specify analysis-service-stop-file_name"
    default = "StopAAS.ps1"

}

variable "automation_runbook_AAS_resume_name" {
    description = "specify automation_runbook_analysis_service_resume_name"
    default = "automation_runbook_AAS_resume"

}

variable "automation_AAS_resume_schedule_name" {
    description = "specify automation_runbook_analysis_service_resume_name"
    default = "automation_AAS_resume_schedule"

}


variable "automation_AAS_stop_schedule_name" {
    description = "specify automation_runbook_analysis_service_resume_name"
    default = "automation_AAS_stop_schedule"

}


variable "automation_runbook_AAS_stop_name" {
    description = "specify automation_runbook_analysis_service_stop_name"
    default = "automation_runbook_AAS_stop"

}
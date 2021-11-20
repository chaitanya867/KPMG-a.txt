data "local_file" "AAS-resume" {
  filename =  var.AAS-resume-file_name
}
data "local_file" "AAS-stop" {
  filename =  var.AAS-stop-file_name
}


#code to create automation runbook for resume analysis service.
resource "azurerm_automation_runbook" "automation_runbook_AAS-resume" {
  name                    = var.automation_runbook_dw_resume_name
  location                = data.azurerm_resource_group.rg.location
  resource_group_name     = data.azurerm_resource_group.rg.name
  automation_account_name = azurerm_automation_account.automation_account.name
  log_verbose             = var.log_verbose
  log_progress            = var.log_progress
  description             = var.description
  runbook_type            = var.runbook_type

  content = data.local_file.AAS-resume.content
}


#code to create automation runbook for stop analysis service.
resource "azurerm_automation_runbook" "automation_runbook_AAS-stop" {
  name                    = var.automation_runbook_dw_stop_name
  location                = data.azurerm_resource_group.rg.location
  resource_group_name     = data.azurerm_resource_group.rg.name
  automation_account_name = azurerm_automation_account.automation_account.name
  log_verbose             = var.log_verbose
  log_progress            = var.log_progress
  description             = var.description
  runbook_type            = var.runbook_type

  content = data.local_file.AAS-stop.content
}


#code to Schedule runbook for resume analysis service
resource "azurerm_automation_schedule" "AAS-resume-schedule" {
  name                    = var.automation_AAS_resume_schedule_name
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  frequency               = var.frequency1
  interval                = var.interval1
  start_time              = var.resume_start_time
}


#code to Schedule runbook stop analysis service
resource "azurerm_automation_schedule" "AAS-stop-schedule" {
  name                    = var.automation_AAS_stop_schedule_name
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  frequency               = var.frequency1
  interval                = var.interval1
  start_time              = var.stop_start_time
}
  

#code to attach schedule to resume analysis service runbook
resource "azurerm_automation_job_schedule" "AAS_resume_job_schedule" {
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  runbook_name            = "${azurerm_automation_runbook.automation_runbook_AAS-resume.name}"
  schedule_name           = "${azurerm_automation_schedule.AAS-resume-schedule.name}"
}


#code to attach schedule to  stop analysis service runbook
resource "azurerm_automation_job_schedule" "AAS_stop_job_schedule" {
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  runbook_name            = "${azurerm_automation_runbook.automation_runbook_AAS-stop.name}"
  schedule_name           = "${azurerm_automation_schedule.AAS-stop-schedule.name}"
}
data "local_file" "dw-resume" {
  filename = var.dw-resume-file_name
}
data "local_file" "dw-stop" {
  filename = var.dw-stop-file_name
}


#code to create automation runbook for resume sql pool.
resource "azurerm_automation_runbook" "automation_runbook_dw-resume" {
  name                    = var.automation_runbook_dw_resume_name
  location                = data.azurerm_resource_group.rg.location
  resource_group_name     = data.azurerm_resource_group.rg.name
  automation_account_name = azurerm_automation_account.automation_account.name
  log_verbose             = var.log_verbose
  log_progress            = var.log_progress
  description             = var.description
  runbook_type            = var.runbook_type

  content = data.local_file.dw-resume.content
}


#code to create automation runbook for stop sql pool.
resource "azurerm_automation_runbook" "automation_runbook_dw-stop" {
  name                    = var.automation_runbook_dw_stop_name
  location                = data.azurerm_resource_group.rg.location
  resource_group_name     = data.azurerm_resource_group.rg.name
  automation_account_name = azurerm_automation_account.automation_account.name
  log_verbose             = var.log_verbose
  log_progress            = var.log_progress
  description             = var.description
  runbook_type            = var.runbook_type

  content = data.local_file.dw-stop.content
}


#code to Schedule runbook for resume sql pool
resource "azurerm_automation_schedule" "dw-resume-schedule" {
  name                    = var.automation_dw_resume_schedule_name
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  frequency               = var.frequency1
  interval                = var.interval1
  start_time              = var.resume_start_time
}


#code to Schedule runbook for stop sql pool
resource "azurerm_automation_schedule" "dw-stop-schedule" {
  name                    = var.automation_dw_stop_schedule_name
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  frequency               = var.frequency1
  interval                = var.interval1
  start_time              = var.stop_start_time
}
  

#code to attach schedule to resume sql pool
resource "azurerm_automation_job_schedule" "dw_resume_job_schedule" {
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  runbook_name            = "${azurerm_automation_runbook.automation_runbook_dw-resume.name}"
  schedule_name           = "${azurerm_automation_schedule.dw-resume-schedule.name}"
}


#code to attach schedule to stop sql pool
resource "azurerm_automation_job_schedule" "dw_stop_job_schedule" {
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  runbook_name            = "${azurerm_automation_runbook.automation_runbook_dw-stop.name}"
  schedule_name           = "${azurerm_automation_schedule.dw-stop-schedule.name}"
}
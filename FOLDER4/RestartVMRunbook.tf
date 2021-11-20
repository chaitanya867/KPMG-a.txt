data "local_file" "restartvm" {
  filename =  var.file_name
}

#code to create automation runbook for restart VM.
resource "azurerm_automation_runbook" "automation_runbook" {
  name                    = var.automation_runbook_name
  location                = data.azurerm_resource_group.rg.location
  resource_group_name     = data.azurerm_resource_group.rg.name
  automation_account_name = azurerm_automation_account.automation_account.name
  log_verbose             = var.log_verbose
  log_progress            = var.log_progress
  description             = var.description
  runbook_type            = var.runbook_type
  
  content = data.local_file.restartvm.content
}


#code to Schedule runbook
resource "azurerm_automation_schedule" "hour" {
  name                    = var.azurerm_automation_schedule_name
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  frequency               = var.frequency
  interval                = var.interval
  start_time              = var.resume_start_time
}
  

  #code to attach schedule to runbook
resource "azurerm_automation_job_schedule" "job_schedule" {
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.automation_account.name}"
  runbook_name            = "${azurerm_automation_runbook.automation_runbook.name}"
  schedule_name           = "${azurerm_automation_schedule.hour.name}"
}
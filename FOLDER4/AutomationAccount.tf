data "azurerm_resource_group" "rg" {
    name = var.rg_name
  
}

#code to create Automation Acoount
resource "azurerm_automation_account" "automation_account" {
    depends_on = [
        data.azurerm_resource_group.rg
    ]
  name                = var.automationAccount_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name

  sku_name = var.sku_name

  tags = var.tags
}

/*
#code to install az-account module
resource "azurerm_automation_module" "azmodule" {
    depends_on = [
        azurerm_automation_account.automation_account
    ]
  name                    = var.az_module_name
  resource_group_name     = data.azurerm_resource_group.rg.name
  automation_account_name = azurerm_automation_account.automation_account.name

  module_link {
    uri = var.module_link_url
  }
}
*/

/*
#code to install other require modules 
resource "azurerm_automation_module" "OtherRequiremodule" {
    depends_on =  [
        azurerm_automation_account.automation_account
    ]
  count = length(var.other_module_names)
  name                    = element(var.other_module_names , count.index)
  resource_group_name     = data.azurerm_resource_group.rg.name
  automation_account_name = azurerm_automation_account.automation_account.name

  module_link {
    uri = element(var.other_modules_link_url , count.index)
  }
}
*/
#code to create linux virtual machine and adding boot diagnostic to it.
resource "azurerm_linux_virtual_machine" "vm" {
    depends_on = [
        data.azurerm_network_interface.nic,
    ]

  name                            = var.vm-name
  resource_group_name             = data.azurerm_resource_group.rg.name
  location                        = data.azurerm_resource_group.rg.location
  size                            = var.size
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = var.disable_password_authentication
  tags =  var.tags
  network_interface_ids = [
    data.azurerm_network_interface.nic.id,
  ]

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.image_version
  }

  os_disk {
    storage_account_type = var.storage_account_type
    caching              = var.caching
  }

  boot_diagnostics {
        storage_account_uri = data.azurerm_storage_account.Boot-Diagnostic-SA.primary_blob_endpoint
    }

  
}

#code to create NIC card for SHIR VM
resource "azurerm_network_interface" "nic" {
    depends_on = [
      azurerm_subnet.subnet,
    ]
  name                = var.nic-name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  ip_configuration {
    name                          = var.config-name
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = var.IP_allocation
    
}
}

#code to create SHIR VM
resource "azurerm_linux_virtual_machine" "vm" {
    depends_on = [
        azurerm_network_interface.nic,
    ]

  name                            = var.vm-name
  resource_group_name             = azurerm_resource_group.rg.name
  location                        = azurerm_resource_group.rg.location
  size                            = var.size
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = var.disable_password_authentication
  tags =  var.tags
  network_interface_ids = [
    azurerm_network_interface.nic.id,
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

  
}

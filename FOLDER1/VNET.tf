
#code to create VNET 
resource "azurerm_virtual_network" "vnet" {
    depends_on = [
      azurerm_resource_group.rg,
    ]
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = [var.Vnet_AddressPrefix]
  tags                = var.tags
}

#code to create subnet
resource "azurerm_subnet" "subnet" {
    depends_on = [
      azurerm_virtual_network.vnet,
    ]
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_AddressPrefix]
  enforce_private_link_endpoint_network_policies = var.enable_endpoint
}
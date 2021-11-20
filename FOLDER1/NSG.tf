
#code to create Network Security Group for SHIR VM
resource "azurerm_network_security_group" "nsg" {
    depends_on = [
      azurerm_subnet.subnet
    ]
  name                = var.nsg_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}


#code to create Security Rules for NSG
resource "azurerm_network_security_rule" "network_security_rule" {
    depends_on = [
      azurerm_network_security_group.nsg
    ]
  count = length(var.rule_name)
  name                        = element(var.rule_name, count.index)
  priority                    = element(var.priority, count.index)
  direction                   = element(var.direction, count.index)
  access                      = element(var.access, count.index)
  protocol                    = element(var.protocol, count.index)
  source_port_range           = element(var.source_port_range, count.index)
  destination_port_range      = element(var.destination_port_range, count.index)
  source_address_prefix       = element(var.source_address_prefix, count.index)
  destination_address_prefix  = element(var.destination_address_prefix, count.index)
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}


# code to attach NSG to Subnet

resource "azurerm_subnet_network_security_group_association" "attaching_nsg" {
    depends_on = [
      azurerm_network_security_rule.network_security_rule
    ]
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
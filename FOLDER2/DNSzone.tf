#code to create private_dns_zones which requires to create private endpoints
resource "azurerm_private_dns_zone" "dns" {
  count               = length(var.DNS_zone_name)
  name                = element(var.DNS_zone_name , count.index)
  resource_group_name = data.azurerm_resource_group.rg.name
}


#code to link private dns zone to VNET
resource "azurerm_private_dns_zone_virtual_network_link" "DNS_VNET_link" {
  depends_on = [
    azurerm_private_dns_zone.dns
  ]
  count                 = length(var.DNS_zone_name)
  name                  = element(var.linkname , count.index)
  resource_group_name   = data.azurerm_resource_group.rg.name
  private_dns_zone_name = azurerm_private_dns_zone.dns[count.index].name
  virtual_network_id    = data.azurerm_virtual_network.vnet.id
}
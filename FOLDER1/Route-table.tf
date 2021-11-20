#code to create Route Table
resource "azurerm_route_table" "RouteTable" {
    depends_on = [
      azurerm_subnet.subnet
    ]
  name                = var.Route_table_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

#code to create routes for route table.

resource "azurerm_route" "Routes" {
    depends_on = [
      azurerm_route_table.RouteTable
    ]
  count = length(var.Route_name)
  name                = element(var.Route_name , count.index)
  resource_group_name = azurerm_resource_group.rg.name
  route_table_name    = azurerm_route_table.RouteTable.name
  address_prefix      = element(var.Route_AddressPrefix , count.index)
  next_hop_type       = element(var.next_hop_type , count.index)
  next_hop_in_ip_address = element(var.next_hop_in_ip_address , count.index)
}

resource "azurerm_subnet_route_table_association" "attaching-route-table" {
  subnet_id      = azurerm_subnet.subnet.id
  route_table_id = azurerm_route_table.RouteTable.id
}
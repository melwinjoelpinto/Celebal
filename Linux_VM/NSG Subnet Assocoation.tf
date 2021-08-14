resource "azurerm_subnet_network_security_group_association" "NSG_Subnet" {
  depends_on                = [azurerm_subnet.Subnet, azurerm_network_security_group.NSG]
  count                     = length(var.Subnet_Name)
  subnet_id                 = element(azurerm_subnet.Subnet.*.id, count.index)
  network_security_group_id = element(azurerm_network_security_group.NSG.*.id, count.index)
}

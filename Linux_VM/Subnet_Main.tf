resource "azurerm_subnet" "Subnet" {
  count                = length(var.Subnet_Name)
  name                 = element(var.Subnet_Name, count.index)
  address_prefixes     = [element(var.Subnet_Address, count.index)]
  virtual_network_name = element(azurerm_virtual_network.VNET.*.name, count.index)
  resource_group_name  = element(azurerm_resource_group.RG.*.name, count.index)
}


resource "azurerm_network_security_group" "NSG" {
  count                        = length(var.NSG_Name)
  name                         = element(var.NSG_Name, count.index)
  location                     = element(azurerm_resource_group.RG.*.location,count.index)
  resource_group_name          = element(azurerm_resource_group.RG.*.name, count.index)
  tags                         = merge(var.NSG_TAG)

  security_rule {
    name                       = element(var.NSG_RULE, count.index)
    priority                   = element(var.NSG_RULE_Priority, count.index)
    direction                  = element(var.NSG_RULE_Direction, count.index)
    access                     = element(var.NSG_RULE_Access, count.index)
    protocol                   = element(var.NSG_RULE_Protocol, count.index)
    source_address_prefix      = element(var.NSG_RULE_Source_Address, count.index)
    source_port_range          = element(var.NSG_RULE_Source_Port_Range, count.index)
    destination_address_prefix = element(var.NSG_RULE_Destination_Address, count.index)
    destination_port_range     = element(var.NSG_RULE_Destination_Port_Range, count.index)
  }
}
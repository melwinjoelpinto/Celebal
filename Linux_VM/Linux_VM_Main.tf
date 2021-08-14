resource "azurerm_linux_virtual_machine" "Linux_VM" {
  count                           = length(var.Linux_VM_Name)
  name                            = element(var.Linux_VM_Name, count.index)
  resource_group_name             = element(azurerm_resource_group.RG.*.name, count.index)
  location                        = element(azurerm_resource_group.RG.*.location, count.index)
  network_interface_ids           = [element(azurerm_network_interface.NIC.*.id, count.index)]
  size                            = element(var.Linux_VM_Size, count.index)
  computer_name                   = element(var.Linux_VM_Host_Name, count.index)
  admin_username                  = element(var.Linux_VM_Username, count.index)
  admin_password                  = element(var.Linux_VM_Password, count.index)
  disable_password_authentication = element(var.Linux_VM_Password_Authentication, count.index)
  custom_data                     = filebase64(element(var.Apache_Server, count.index))
  tags                            = merge(var.Linux_VM_TAG)
  
  os_disk {
    caching              = element(var.Linux_VM_OS_Caching, count.index)
    storage_account_type = element(var.Linux_VM_OS_Disk_Type, count.index)
  }

  source_image_reference {
    publisher = element(var.Linux_VM_Publisher, count.index)
    offer     = element(var.Linux_VM_Offer, count.index)
    sku       = element(var.Linux_VM_SKU, count.index)
    version   = element(var.Linux_VM_Version, count.index)
  }
}
provider "azurerm" {
  subscription_id = var.Subscription_ID
  client_id       = var.Client_ID
  client_secret   = var.Client_Secret
  tenant_id       = var.Tenant_ID

  features{}
}

resource "azurerm_resource_group" "RG" {
  count    = length(var.RG_Name)
  name     = element(var.RG_Name, count.index)
  location = element(var.RG_Location, count.index)
  tags     = merge(var.RG_Tag)
}
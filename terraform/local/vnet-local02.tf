resource "azurerm_virtual_network" "vnet_local02_terraform" {
  name                = "vnet-local02-terraform"
  location            = azurerm_resource_group.rg_local_terraform.location
  resource_group_name = azurerm_resource_group.rg_local_terraform.name
  address_space       = ["192.168.2.0/24"]

  subnet {
    name           = "sub-local02"
    address_prefix = "192.168.2.0/27"
    security_group = azurerm_network_security_group.nsg01_terraform.id
  }

  tags = {
    ambiente = "on-premise"
  }
}
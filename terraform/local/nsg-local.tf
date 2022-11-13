resource "azurerm_network_security_group" "nsg01_terraform" {
  name                = "nsg01-terraform"
  location            = azurerm_resource_group.rg_local_terraform.location
  resource_group_name = azurerm_resource_group.rg_local_terraform.name
}


## Same as the July 2024 videos, figure i'd do it to do vnetting.
resource "azurerm_virtual_network" "network" {
  name                = "webapp-network"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

## create a subnet for the webapp.
resource "azurerm_subnet" "user-webapp-subnet" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.network.name
  address_prefixes     = ["10.0.2.0/24"]
}

## create a subnet for the backoffice webapp.
resource "azurerm_subnet" "backoffice-webapp-subnet" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.network.name
  address_prefixes     = ["10.0.2.0/24"]
}


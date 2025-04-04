provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = format("rg-%s-%s-%s", lower(var.project), var.function, var.environment)
  location = var.location
  tags     = var.tags
}

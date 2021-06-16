provider "azurerm" {
  version = "= 2.62.0"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "test-rg1"
  location = "West Europe"
}

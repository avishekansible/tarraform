provider "azurerm" {
  version = "= 2.18"
  features {}
}

terraform {
  backend "azurerm"{
  }
}  

resource "azurerm_resource_group" "rg" {
  name = "test-rg"
  location = "West Europe"
}

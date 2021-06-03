provider "azurerm" {
  version = "= 2.18"
  features {}
}

terraform {
  backend "azurerm"{
    resource_group_name = "tstate"
    storage_account_name = "aviaccount"
    container_name = "terraform.tfstate"
  }
}  

resource "azurerm_resource_group" "rg" {
  name     = "test-rg"
  location = "West Europe"
}

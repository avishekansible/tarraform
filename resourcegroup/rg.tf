#terraform {
#  backend "azurerm" {
#  }
#}

provider "azurerm" {
  version = "=2.60"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "test-rg1"
  location = "westeurope"
}

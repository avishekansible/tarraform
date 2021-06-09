terraform {
  backend "azurerm" {
  }
}

provider "azurerm" {
  version = ">=2.0"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
}

resource "azurerm_storage_account" "rg" {
  name                     = "testsa8557"
  resource_group_name      = "test-rg1"
  location                 = "westeurope"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

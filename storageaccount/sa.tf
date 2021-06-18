provider "azurerm" {
  version = "= 2.60"
  features {}
}

terraform {
  backend "azurerm"{}
}
  
resource "azurerm_storage_account" "rg" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  resource_group_name      = "test-rg1"
  location = "westeurope"
  name     = "remotesa22"
}

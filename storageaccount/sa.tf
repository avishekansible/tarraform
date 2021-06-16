

provider "azurerm" {
  
resource "azurerm_storage_account" "sa01" {

  account_replication_type = "LRS"
  account_tier             = "Standard"
  resource_group_name      = "test-rg1"
  location = "westeurope"
  name     = "remotesa22"
}

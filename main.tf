terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tej-rg"
    storage_account_name = "ranastoragee"
    container_name       = "jaffa"
    key                  = "terraform.apnastate"
    
  }
}

provider "azurerm" {

  features {}
  subscription_id = "b02b567a-e4cb-4c73-975e-4664c82c8fc3"
}
resource "azurerm_resource_group" "siwan" {
  name     = "siwan-rg"
  location = "West Europe"
}
resource "azurerm_resource_group" "chapra" {
  name     = "chapra-rg"
  location = "West Europe"
}
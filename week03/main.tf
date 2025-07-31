// Week03 - create a resource group with terraform
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    } 
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_week03" {
  name     = "Week03ResourceGroup"
  location = "WestEurope"
}
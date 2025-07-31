// Week02 - create a resource group with terraform
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

resource "azurerm_resource_group" "rg_week02" {
  name     = "Week02ResourceGroup"
  location = "WestEurope"
}

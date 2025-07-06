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
  subscription_id = "9bea7f40-ade6-473e-8329-ea42705a2415"
}

resource "azurerm_resource_group" "rg_week03" {
  name     = "Week03ResourceGroup"
  location = "WestEurope"
}
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

resource "azurerm_resource_group" "rg_week05" {
  name     = "Week05ResourceGroup"
  location = "WestEurope"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "week05-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg_week05.location
  resource_group_name = azurerm_resource_group.rg_week05.name
}

resource "azurerm_subnet" "subnet1" {
  name                 = "subnet-1"
  resource_group_name  = azurerm_resource_group.rg_week05.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = "subnet-2"
  resource_group_name  = azurerm_resource_group.rg_week05.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

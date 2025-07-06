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

resource "azurerm_resource_group" "rg_week04" {
  name     = "Week04ResourceGroup"
  location = "WestEurope"
}

resource "azurerm_storage_account" "storage" {
  name                     = "week04storageacct${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.rg_week04.name
  location                 = azurerm_resource_group.rg_week04.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "random_string" "suffix" {
  length  = 5
  upper   = false
  numeric = true
  special = false
}

resource "azurerm_storage_container" "container" {
  name                  = "week04container"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

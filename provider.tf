terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  required_version = ">= 1.3.0"
  # backend "azurerm" {
  #   sas_token = "sp=racwdli&st=2025-04-01T09:23:37Z&se=2025-04-01T17:23:37Z&spr=https&sv=2024-11-04&sr=c&sig=1zlQhvC14lsJhvW7S5MX7%2FEiAEbh0aYUk9Sf5nuCgRA%3D"
  #   storage_account_name = "storageforterraformgvsx"
  #   container_name = "state-data"
  #   key = "prodtest.terraform.tfstate"

  # }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
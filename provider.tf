terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  required_version = ">= 1.3.0"
   backend "azurerm" {
     sas_token = "sp=racwdli&st=2025-04-07T11:12:04Z&se=2025-04-07T19:12:04Z&spr=https&sv=2024-11-04&sr=c&sig=ehQ0xeqoHuyKnf3YsmdsaTYDIgutlq7eT7n2mOZNWq0%3D"
     storage_account_name = "storageforterraformgvsx"
     container_name = "state-data"
     key = "prodtest.terraform.tfstate"

   }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

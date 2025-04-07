terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  required_version = ">= 1.3.0"
   backend "azurerm" {
     sas_token = var.AZURE_STORAGE_SAS_TOKEN
     storage_account_name = "storageforterraformgvsx"
     container_name = "state-data"
     key = "prodtest.terraform.tfstate"

   }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

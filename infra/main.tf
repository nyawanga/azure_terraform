terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
  cloud {
    organization = "itisfranc"

    workspaces {
      name = "learn_azure_terraform_github_actions"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.azure_subscription_id
  tenant_id       = var.azure_subscription_tenant_id
  client_id       = var.service_principal_appid
  client_secret   = var.service_principal_password
}



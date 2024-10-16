terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=4.4.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "55cf45e5-55c2-4585-9b6f-58f6f491aad6"
    use_cli = true
    resource_provider_registrations = "none"
 }
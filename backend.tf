terraform {
  backend "azurerm" {
    resource_group_name = "tfstate-rg"
    storage_account_name = "tfstatewai"
    container_name = "actionsworkshop"
    key = "terraformfile2"
  }
}


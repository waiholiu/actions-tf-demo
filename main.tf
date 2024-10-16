
resource "azurerm_resource_group" "example" {
  name     = "gen-${var.env}-actions-rg"
  location = "Australia East"
}

# resource "azurerm_app_service_plan" "example" {
#   name                = "gen-actions-asp"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   sku {
#     tier = "Standard"
#     size = "S1"
#   }

#   tags = {
#     environment = "production"
#   }
# }

# resource "azurerm_windows_web_app" "example" {
#   name                = "gen-actions-app"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_app_service_plan.example.location
#   service_plan_id     = azurerm_app_service_plan.example.id

#   site_config {}
# }

resource "azurerm_service_plan" "example" {
  name                = "gen-${var.env}-actions-asp"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku_name            = "P1v2"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "example" {
  name                = "gen-${var.env}-actions-app"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}
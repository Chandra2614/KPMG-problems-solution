resource "azurerm_resource_group" "main-rg" {
  name     = var.name
  location = var.location
}
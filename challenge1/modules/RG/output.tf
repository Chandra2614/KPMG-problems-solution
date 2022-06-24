output "resource_group_name" {
    value = azurerm_resource_group.main-rg.name
    description = "Name of the resource group."
}

output "rg_location" {
    value = azurerm_resource_group.main-rg.location
    description = "Location id of the resource group"
}
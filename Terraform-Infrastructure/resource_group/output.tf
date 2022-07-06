output "resource_group_name" {
  description = "The name of the resource group"
  value = azurerm_resource_group.rg.name
}

output "location" {
   description = "The name of the resource group location"
   value = azurerm_resource_group.rg.location
}

output "resource_group_id" {
   description = "The name of resource group id"
   value = azurerm_resource_group.rg.id
}
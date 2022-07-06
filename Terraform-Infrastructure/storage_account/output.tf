output "resource_group_name" {
  description = "The name of the resource group in which resources are created"
  value       = azurerm_storage_account.storageacc.resource_group_name
}

output "location" {
  description = "The location of the resource group in which resources are created"
  value       = azurerm_storage_account.storageacc.location
}

output "storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.storageacc.id
}

output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.storageacc.name
}

output "container_name" {
  description = "The name of the storage container"
  value       = azurerm_storage_container.stgcntr.name
}
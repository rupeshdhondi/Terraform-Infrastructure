output "resource_group_name" {
  description = "The name of the resource group"
  value = azurerm_virtual_network.vnet.resource_group_name
}

output "location" {
   description = "The name of the resource group location"
   value = azurerm_virtual_network.vnet.location
}

output "vnet_id" {
  description = "The id of the newly created for vNet"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of vnet name"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_location" {
  description = "The name of vnet location"
  value       = azurerm_virtual_network.vnet.location
}

output "vnet_address_space" {
  description = "The name of address spaces in vnet"
  value       = azurerm_virtual_network.vnet.address_space
}

output "vnet_subnets" {
  description = "The ids of subnets"
  value       = azurerm_subnet.subnet.*.id
}

output "nsg_name" {
   description = "The name of network security group"
    value = azurerm_network_security_group.nsg.name
}







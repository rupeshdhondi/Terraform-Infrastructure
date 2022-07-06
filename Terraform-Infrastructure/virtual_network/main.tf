
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name}-vnet"
  location            = var.location 
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_names)
  name                 = var.subnet_names[count.index]
  address_prefixes     = [var.subnet_prefixes[count.index]]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
}

#Network Security Group for WEB SERVER
resource "azurerm_network_security_group" "nsg" {
    name                = "${var.nsg_name}-nsg"
    location            = var.location 
    resource_group_name = var.resource_group_name
    tags                = var.tags

    security_rule {
        name                       = "LinuxLogin"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "Httpwebtraffic"
        priority                   = 101
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
}

variable "resource_group_name" {
    description = "Name of the resource group to be imported."
    type        = string
}

variable "location" {
    description = "Name of resource group location"
    type        = string
}

variable "vnet_name" {
    description = "Name of the vnet to create"
    type        = string
}

variable "vnet_location" {
  description = "The location of the vnet to create. Defaults to the location of the resource group."
  type        = string
  default     = null
}

variable "address_space" {
    type        = list(string)
    description = "The address space that is used by the virtual network."
    default     = ["10.0.0.0/16"]
}

variable "subnet_names" {
    description = "A list of public subnets inside the vNet."
    type        = list(string)
    default     = ["Subnet-1","Subnet-2","Subnet-3"]
}

variable "subnet_prefixes" {
    description = "The address prefix to use for the subnet."
    type        = list(string)
    default     = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}

variable "nsg_name" {
    description = "The name of network security group"
    default = "nsg1"
}

variable "nsg_ids" {
    description = "A map of subnet name to Network Security Group IDs"
    type        = map(string)

    default = {
  }
}

variable "tags" {
   description = "The default tag vlaues"
   type        = map(string)
   default = {
     "key" = "value"
   }
}

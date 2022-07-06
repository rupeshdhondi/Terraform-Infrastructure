variable "resource_group_name" {
  description = "Name of the resource group to be imported."
  type        = string
  default     = "azuredevops"
}

variable "location" {
  description = "Name of the resource group location to be imported"
  type        = string
  default     = "eastus"
}

variable "acr_registry" {
  description = "Description for web subnet"
  type        = string
  default     = "azuredevops7484"
}

variable "sku" {
  description = "Name of sku name"
  type        = string
  default     = "Standard"
}

variable "tags" {
   description = "The default tag vlaues"
   type        = map(string)
   default = {
     "key" = "value"
   }
}
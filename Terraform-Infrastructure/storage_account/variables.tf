variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
  type        = string
  default     = "azuredevops"
}

variable "location" {
  description = "The name of the storage account location"
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  description = "The name of the azure storage account"
  type        = string
  default     = "azuredevops7896"
}


variable "account_tier" {
  description = "The name of account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The name of replication type"
  type        = string
  default     = "GRS"
}

variable "container_name" {
  description = "The name of container name"
  type        = string
  default     = "terraform"
}

variable "container_access_type" {
  description = "The name of container access type"
  type        = string
  default     = "private"
}

variable "tags" {
   description = "The default tag vlaues"
   type        = map(string)
   default = {
     "key" = "value"
   }
}
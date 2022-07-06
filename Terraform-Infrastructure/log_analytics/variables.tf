variable "resource_group_name" {
  description  = "Name of resource group name"
   type        = string
   default     = "azuredevops"
}

variable "location" {
  description = "Name of resource group location"
  type        = string
  default     = "eastus"
}

variable "log_analytics_workspace_name" {
  description = "Name of log analytics work space"
  type        = string
  default     = "devopsloganalytics8975"
}

variable "law_sku" {
  description = "Name of log analytics work space sku type"
  type        = string
  default     = "PerGB2018"
}

variable "tags" {
   description = "The default tag vlaues"
   type        = map(string)
   default = {
     "key" = "value"
   }
}


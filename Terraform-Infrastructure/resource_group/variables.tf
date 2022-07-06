variable "resource_group_name" {
    description = "Name of the resource group to be imported."
    type        = string
}

variable "location" {
    description = "Name of resource group location"
    type        = string
}

variable "tags" {
   description = "The default tag vlaues"
   type        = map(string)
   default = {
     "key" = "value"
   }
}
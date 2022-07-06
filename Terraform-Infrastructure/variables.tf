########### Resource Group #############
variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Name of the resource group loaction"
}

######### Virtual Network ###########
variable "virtual_network_name" {
  description = "Name of virtual network anme"
}

variable "network_security_group_name" {
  description = "Name of network security group"
}

########### acr ################
variable "acr_registry" {
  description = "Description for web subnet"
}

variable "sku" {
  description = "Name of sku name"
}

######### log analytics name ########
variable "log_analytics_workspace_name" {
  description = "Name of log analytics work space"
}

variable "law_sku" {
  description = "Name of log analytics work space sku type"
}

######### Kubernetes ###########
variable "cluster_name" {
  description = "AKS name in Azure"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
}

variable "system_node_count" {
  description = "Number of AKS worker nodes"
}

variable "acr_name" {
  description = "ACR name"
}


######## Storage Account ##########
variable "storage_account_name" {
  description = "Name of storage account name "
}

variable "account_tier" {
  description = "The name of account tier"
}

variable "account_replication_type" {
  description = "The name of replication type"
}

variable "container_name" {
  description = "The name of container name"
}

variable "container_access_type" {
  description = "The name of container access type"
}

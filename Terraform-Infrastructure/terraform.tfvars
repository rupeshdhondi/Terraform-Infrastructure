####### Resource Group #######
resource_group_name    = "dev_rg"
location               = "eastus"

####### Virtual Network #######
virtual_network_name   = "azuredevops"
network_security_group_name   = "azuredevops"

####### Azure Container Registry #######
acr_registry           = "azuredevops4833"
sku                    = "Standard"

####### Log Analytics Workspace #######
log_analytics_workspace_name     = "azuredevops-law"
law_sku                = "PerGB2018"

####### Azure Kubernetes Service #######
cluster_name           = "azuredevops-aks"
kubernetes_version     = "1.22.6"
system_node_count      = 2
acr_name               = "myacr5984"

####### Storage Account #######
storage_account_name   = "azuredevops567"
account_tier           = "Standard"
account_replication_type  = "GRS"
container_name         = "terraform"
container_access_type  = "private"
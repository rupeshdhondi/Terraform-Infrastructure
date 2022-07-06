
/*
module "rg" {
  source               = "./resource_group"
  resource_group_name  = var.resource_group_name
  location             = var.location
  tags                 = local.common_tags  
}
*/
module "vnet" {
  source               = "./virtual_network"
  vnet_name            = var.virtual_network_name
  nsg_name             = var.network_security_group_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  tags                 = local.common_tags  
}

module "storage_account" {
  source                = "./storage_account"
  resource_group_name   = var.resource_group_name
  location              = var.location
  account_tier          = var.account_tier
  account_replication_type = var.account_replication_type
  storage_account_name  = var.storage_account_name
  container_name        = var.container_name
  container_access_type = var.container_access_type
  tags                  = local.common_tags  
}

module "container_registry" {
  source                = "./acr"
  acr_registry          = var.acr_registry
  resource_group_name   = var.resource_group_name
  location              = var.location
  sku                   = var.sku
  tags                  = local.common_tags  
}

module "log_analytics" {
  source                = "./log_analytics"
  log_analytics_workspace_name = var.log_analytics_workspace_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  law_sku               = var.law_sku
  tags                  = local.common_tags  
}


module "kubernetes_cluster" {
  source                = "./aks"
  resource_group_name   = var.resource_group_name
  location              = var.location
  acr_name              = var.acr_name
  cluster_name          = var.cluster_name
  kubernetes_version    = var.kubernetes_version
  system_node_count     = var.system_node_count
  tags                  = local.common_tags  
}

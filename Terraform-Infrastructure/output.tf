
output "virutal_network" {
  value = module.vnet.vnet_name
}

output "storage_account_name" {
  value = module.storage_account.storage_account_name
}

output "container_registry" {
  value = module.container_registry.acr_registry
}

output "log_analytics" {
  value = module.log_analytics.log_analytics_workspace_name
}

output "kubernetes_cluster" {
  value = module.kubernetes_cluster.cluster_name
}
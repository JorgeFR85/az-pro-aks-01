output "aks_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
}

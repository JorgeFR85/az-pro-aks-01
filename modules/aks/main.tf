resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "nodepool1"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
 
 backend "azurerm" {
    resource_group_name = "rg-pro-infra-weu-01"            # Nombre del grupo de recursos donde se encuentra la cuenta de almacenamiento
    storage_account_name = "stproinfraweu01"               # Nombre de la cuenta de almacenamiento donde se va almacenar el fichero de estado
    container_name = "terraform"                           # Nombre del container donde se va almacenar el fichero de estado
    key = "terraform.tfstate"                              # Nombre del fichero de estado. El nombre estándar es terraform.tfstate
  }
  
}

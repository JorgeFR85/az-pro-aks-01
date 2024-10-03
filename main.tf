terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.3.0"  # Recomendación para utilizar una versión estable y actualizada
    }
  }
}

provider "azurerm" {
  features {} # Habilita las características predeterminadas del proveedor

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

}

# Se crea el resource group
resource "azurerm_resource_group" "aks_rg" {
  name     = "az-pro-aks-weu-01"
  location = "westeurope"
}

# Creación del AKS usando un módulo
module "aks" {
  source              = "./modules/aks"
  aks_name            = "az-pro-aks-01"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  tags                = var.tags
}

# Permisos de contributor al grupo encargado del AKS
resource "azurerm_role_assignment" "role_assignment" {
  principal_id         = var.principal_id
  role_definition_name = "Contributor"
  scope                = azurerm_resource_group.aks_rg.id
  skip_service_principal_aad_check = true
}

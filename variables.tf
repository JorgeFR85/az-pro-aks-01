variable "dns_prefix" {
  type        = string
  description = "Prefijo DNS para el clúster de AKS"
  default     = "az-pro-aks-01"
}

variable "node_count" {
  type        = number
  description = "Cantidad de nodos en el pool"
  default     = 2
}

variable "vm_size" {
  type        = string
  description = "Talla VM del cluster"
  default     = "Standard_B2s"
}

variable "tags" {
  type        = map(string)
  description = "Etiquetas a aplicar en el clúster AKS"
  default     = {
    environment = "production"
    region = "westeurope"
    app = "aks"
  }
}
/*
variable "principal_id" {
  type        = string
  description = "ObjectId del grupo al que se asignaran permisos"
  default     = "66098637-544e-4b35-a224-f5ee770dd348"  # --> ObjectId del grupo
}
*/
variable "principal_id" {
  description = "ID del usuario o servicio al que se asignará el rol"
  type        = string
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "client_id" {
  description = "Azure Client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure Client Secret"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "westeurope"
}


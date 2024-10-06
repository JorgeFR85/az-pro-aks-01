variable "dns_prefix" {
  type        = string
  description = "Prefijo DNS para el clúster de AKS"
  default     = "az-pro-aks-02"
}

variable "node_count" {
  type        = number
  description = "Cantidad de nodos en el pool"
  default     = 2
}

variable "vm_size" {
  type        = string
  description = "Talla VM del cluster"
  default     = "Standard_B2ps_v2"
}

variable "tags" {
  type        = map(string)
  description = "Etiquetas a aplicar en el clúster AKS"
  default     = {
    environment = "production"
    region = "East US"
    app = "aks"
  }
}
variable "principal_id" {
  description = "ClientID (AppID) del Service Principal o ObjectID Grupo/user"
  type        = string
}

variable "subscription_id" {
  description = "Subscription ID Azure"
  type        = string
}

variable "client_id" {
  description = "Azure Client ID (config git AZURE_CLIENT_ID workflow y terraform.tfvars)"
  type        = string
}

variable "client_secret" {
  description = "Secret del service principal"
  type        = string
}

variable "tenant_id" {
  description = "Tenant ID de Azure"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "centralus"
}


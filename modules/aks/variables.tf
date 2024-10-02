variable "aks_name" {
  type        = string
  description = "Nombre de AKS"
}

variable "location" {
  type        = string
  description = "Región del AKS"
  default     = "westeurope"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group"
}

variable "dns_prefix" {
  type        = string
  description = "DNS del clúster AKS"
}

variable "node_count" {
  type        = number
  description = "Nodos en el pool"
  default     = 1
}

variable "vm_size" {
  type        = string
  description = "Tamaño de las VM's del AKS"
  default     = "Standard_B2s"
}

variable "tags" {
  type        = map(string)
  description = "Tags del AKS"
  default     = {}
}

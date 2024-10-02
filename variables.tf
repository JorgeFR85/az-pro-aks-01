variable "dns_prefix" {
  type        = string
  description = "Prefijo DNS para el clúster de AKS"
  default     = "az-pro-aks-01"
}

variable "node_count" {
  type        = number
  description = "Cantidad de nodos en el pool"
  default     = 1
}

variable "vm_size" {
  type        = string
  description = "Tamaño de las máquinas virtuales en el clúster AKS"
  default     = "Standard_B2s"
}

variable "tags" {
  type        = map(string)
  description = "Etiquetas a aplicar en el clúster AKS"
  default     = {
    environment = "production"
  }
}

variable "principal_id" {
  type        = string
  description = "ID del usuario o servicio al que se asignará el rol"
}

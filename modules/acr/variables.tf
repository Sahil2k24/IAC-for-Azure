variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The Azure region where resources will be created"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
}

variable "sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
}

variable "admin_enabled" {
  description = "Whether admin user is enabled for the container registry."
  type        = bool
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
}

variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "Azure region where resources will be created"
}

#VNet

variable "vnet_name" {
  description = "The name of the virtual network"
}

variable "subnet_name" {
  description = "The name of the subnet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
}

# Kubernetes

variable "kubernetes_cluster_name" {
  description = "The name of the AKS cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
}

variable "node_pool_name" {
  description = "Node pool name for the AKS cluster"
}

variable "vm_size" {
  description = "VM size for the AKS nodes"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
}

variable "os_disk_size_gb" {
  description = "OS disk size for the AKS nodes"
}

variable "identity_type" {
  description = "Identity type for AKS"
}

variable "network_plugin" {
  description = "Network plugin for the AKS cluster"
}

variable "service_cidr" {
  description = "CIDR for AKS services"
}

variable "dns_service_ip" {
  description = "DNS Service IP for AKS"
}

variable "kubernetes_version" {
  description = "Version of Kubernetes to use for the AKS cluster"
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

# ACR
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

# PostgreSQL db

variable "postgresql_server_name" {
  description = "Name of the PostgreSQL server"
}

variable "postgresql_admin_username" {
  description = "Admin username for PostgreSQL"
}

variable "postgresql_admin_password" {
  description = "Admin password for PostgreSQL"
}

variable "postgresql_version" {
  description = "PostgreSQL version"
}

variable "postgresql_sku_name" {
  description = "SKU for PostgreSQL"
}

variable "postgresql_storage_mb" {
  description = "Storage size in MB for PostgreSQL"
}

variable "geo_redundant_backup_enabled" {
  description = "Enable or disable Geo-redundant backups for PostgreSQL server"
  type        = bool
}

variable "postgresql_backup_retention_days" {
  description = "Backup retention period in days"
}
variable "postgresql_storage_autogrow_enabled" {
  description = "Enable or disable storage auto-growth"
}

variable "postgresql_allowed_ip_ranges" {
  description = "List of allowed IP ranges for PostgreSQL"
  type        = list(string)
}


#Storage
variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "container_name" {
  description = "The name of the blob container"
  type        = string
}

variable "state_file_key" {
  description = "The key for the Terraform state file"
  type        = string
}

variable "access_key" {
  description = "The access key for the storage account"
  type        = string
  sensitive   = true
}

#new storage account
variable "storage_account_tier" {
  description = "The performance tier of the storage account. Valid values are 'Standard' and 'Premium'."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account. Options include 'LRS', 'GRS', 'RAGRS', or 'ZRS'."
  type        = string
  default     = "LRS"
}

#apim
variable "apim_name" {
  description = "The name of the API Management service."
}

variable "apim_publisher_name" {
  description = "The name of the publisher for the API Management service."
}

variable "apim_publisher_email" {
  description = "The email of the publisher for the API Management service."
}

variable "apim_sku_name" {
  description = "The SKU of the API Management service (e.g., Developer, Basic, Standard, Premium)."
}




variable "postgresql_server_name" {
  description = "The name of the PostgreSQL server"
}

variable "postgresql_admin_username" {
  description = "Admin username for PostgreSQL server"
}

variable "postgresql_admin_password" {
  description = "Admin password for PostgreSQL server"
  sensitive   = true
}

variable "location" {
  description = "The Azure region where resources will be created"
}

variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "postgresql_sku_name" {
  description = "The SKU of the PostgreSQL server"
}

variable "postgresql_storage_mb" {
  description = "Storage size in MB for the PostgreSQL server"
}

variable "postgresql_backup_retention_days" {
  description = "The number of days to retain backups"
}

variable "geo_redundant_backup_enabled" {
  description = "Enable or disable Geo-redundant backups for PostgreSQL server"
  type        = bool
}
variable "postgresql_storage_autogrow_enabled" {
  description = "Whether storage auto-grow is enabled"
  type        = bool
}

variable "postgresql_allowed_ip_ranges" {
  description = "List of allowed IP ranges for PostgreSQL access"
  type        = list(string)
}

variable "postgresql_version" {
  description = "Version of PostgreSQL to deploy"
}

variable "tags" {
  description = "Tags for the PostgreSQL resources"
  type        = map(string)
}

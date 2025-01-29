#  main.tf
module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "virtual_network" {
  source              = "./modules/virtual_network"
  name                = var.vnet_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  address_space       = var.vnet_address_space
}

module "subnet" {
  source              = "./modules/subnet"
  name                = var.subnet_name
  resource_group_name = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  address_prefixes    = var.subnet_address_prefixes
}

module "kubernetes_cluster" {
  source                 = "./modules/kubernetes_cluster"
  name                   = var.kubernetes_cluster_name
  location               = module.resource_group.location
  resource_group_name    = module.resource_group.name
  dns_prefix             = var.dns_prefix
  node_pool_name         = var.node_pool_name
  vm_size                = var.vm_size
  node_count             = var.node_count
  os_disk_size_gb        = var.os_disk_size_gb
  vnet_subnet_id         = module.subnet.subnet_id
  identity_type          = var.identity_type
  network_plugin         = var.network_plugin
  service_cidr           = var.service_cidr
  dns_service_ip         = var.dns_service_ip
  kubernetes_version      = var.kubernetes_version
  tags                   = var.tags
}

module "acr" {
  source               = "./modules/acr"
  resource_group_name  = module.resource_group.name
  location             = module.resource_group.location
  acr_name             = var.acr_name
  sku                  = var.sku
  admin_enabled        = var.admin_enabled
  tags                 = var.tags
}

module "postgresql_db" {
  source                       = "./modules/postgresql_db"
  postgresql_server_name        = var.postgresql_server_name
  postgresql_admin_username     = var.postgresql_admin_username
  postgresql_admin_password     = var.postgresql_admin_password
  location                     = module.resource_group.location
  resource_group_name          = module.resource_group.name
  postgresql_sku_name           = var.postgresql_sku_name
  postgresql_storage_mb         = var.postgresql_storage_mb
  postgresql_backup_retention_days = var.postgresql_backup_retention_days
  geo_redundant_backup_enabled  = var.geo_redundant_backup_enabled
  postgresql_storage_autogrow_enabled = var.postgresql_storage_autogrow_enabled
  postgresql_allowed_ip_ranges  = var.postgresql_allowed_ip_ranges
  postgresql_version            = var.postgresql_version
  tags                         = var.tags
}

module "apim" {
  source              = "./modules/apim"
  name                = var.apim_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  publisher_name      = var.apim_publisher_name
  publisher_email     = var.apim_publisher_email
  sku_name            = var.apim_sku_name
  tags                = var.tags
}

module "storage_account" {
  source              = "./modules/storage_account"
  name                = var.storage_account_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  account_tier        = var.storage_account_tier
  account_replication_type = var.account_replication_type
  tags                = var.tags
}

output "acr_login_server" {
  value = module.acr.acr_login_server
}

output "kube_config" {
  value     = module.kubernetes_cluster.kube_config_raw
  sensitive = true
}
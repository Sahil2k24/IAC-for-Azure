resource "azurerm_postgresql_flexible_server" "this" {
  name                         = var.postgresql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  sku_name                     = var.postgresql_sku_name
  storage_mb                   = var.postgresql_storage_mb
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  backup_retention_days        = var.postgresql_backup_retention_days
  version                      = var.postgresql_version
  administrator_login          = var.postgresql_admin_username
  administrator_password       = var.postgresql_admin_password
  tags                         = var.tags
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "this" {
  name                        = "AllowClientIP"
  server_id                   = azurerm_postgresql_flexible_server.this.id
  start_ip_address            = var.postgresql_allowed_ip_ranges[0]
  end_ip_address              = var.postgresql_allowed_ip_ranges[0]
}

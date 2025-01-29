output "postgresql_server_id" {
  description = "The ID of the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.this.id
}

output "postgresql_admin_username" {
  description = "Admin username for PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.this.administrator_login
}

output "postgresql_admin_password" {
  description = "Admin password for PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.this.administrator_password
  sensitive   = true
}

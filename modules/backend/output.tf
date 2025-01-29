# backend/outputs.tf

output "resource_group_name" {
  value = var.resource_group_name
}

output "storage_account_name" {
  value = var.storage_account_name
}

output "container_name" {
  value = var.container_name
}

output "state_file_key" {
  value = var.state_file_key
}

output "access_key" {
  value = var.access_key
}

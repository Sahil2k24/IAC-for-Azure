resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version = var.kubernetes_version

  default_node_pool {
    name            = var.node_pool_name
    vm_size         = var.vm_size
    node_count      = var.node_count
    os_disk_size_gb = var.os_disk_size_gb
    vnet_subnet_id  = var.vnet_subnet_id
  }

  identity {
    type = var.identity_type
  }

  network_profile {
    network_plugin    = var.network_plugin
    service_cidr      = var.service_cidr
    dns_service_ip    = var.dns_service_ip
  }

  tags = var.tags
}
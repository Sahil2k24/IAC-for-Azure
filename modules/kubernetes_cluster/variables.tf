variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "dns_prefix" {}
variable "node_pool_name" {}
variable "vm_size" {}
variable "node_count" {}
variable "os_disk_size_gb" {}
variable "vnet_subnet_id" {}
variable "identity_type" {}
variable "network_plugin" {}
variable "service_cidr" {}
variable "dns_service_ip" {}
variable "kubernetes_version" {
  description = "Version of Kubernetes to use for the AKS cluster"
  type        = string
}
variable "tags" { type = map(string) }
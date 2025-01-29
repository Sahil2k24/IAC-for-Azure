# backend/variables.tf

variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}

variable "container_name" {
  description = "The name of the storage container."
  type        = string
}

variable "state_file_key" {
  description = "The key for the state file in the storage container."
  type        = string
}

variable "access_key" {
  description = "The access key for the Azure Storage Account."
  type        = string
}

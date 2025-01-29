variable "name" {
  description = "The name of the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string
}

variable "location" {
  description = "The location/region for the storage account."
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account. Valid values are 'Standard' or 'Premium'."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account. Options include 'LRS', 'GRS', 'RAGRS', or 'ZRS'."
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "A map of tags to assign to the storage account."
  type        = map(string)
  default     = {}
}

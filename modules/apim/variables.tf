variable "name" {
  description = "The name of the API Management service."
}

variable "location" {
  description = "The location of the API Management service."
}

variable "resource_group_name" {
  description = "The name of the resource group."
}

variable "publisher_name" {
  description = "The name of the publisher for the API Management service."
}

variable "publisher_email" {
  description = "The email of the publisher for the API Management service."
}

variable "sku_name" {
  description = "The SKU of the API Management service."
}

variable "tags" {
  description = "Tags to assign to the API Management service."
  type        = map(string)
  default     = {}
}

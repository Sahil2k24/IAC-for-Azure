terraform {
  backend "azurerm" {
    resource_group_name   = "Terraform-state-file-UAT"
    storage_account_name  = "polystoxuattfstate"
    container_name        = "polystox-tf-state-file-uat"
    key                   = "uat-terraform.tfstate"
  }
}
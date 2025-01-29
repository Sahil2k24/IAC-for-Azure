output "apim_id" {
  value = azurerm_api_management.apim.id
}

output "apim_hostname" {
  value = azurerm_api_management.apim.gateway_url
}

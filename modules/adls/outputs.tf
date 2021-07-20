output "adls_id" {
  value       = azurerm_data_lake_store.adlsg1.id
  description = "The ID of the ADLS Gen 1 resource"
}

output "adls_name" {
  value       = azurerm_data_lake_store.adlsg1.name
  description = "The name of the ADLS Gen 1 resource"
}

output "adls_endpoint" {
  value       = azurerm_data_lake_store.adlsg1.endpoint
  description = "Endpoint for ADLS Gen 1 resource"
}

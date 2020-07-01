output "adls_id" {
    value = azurerm_data_lake_store.adlsg1.id
    description = "The ID of the ADLS Gen 1 resource"
}

output "adls_name" {
    value = azurerm_data_lake_store.adlsg1.name
    description = "The name of the ADLS Gen 1 resource"
}

output "adls_firewall_rule_ids" {
    value = azurerm_data_lake_store_firewall_rule.allowed_addresses[*].id
    description = "The IDs of the ADLS Gen 1 firewall rules"
}

output "adls_firewall_rule_names" {
    value = azurerm_data_lake_store_firewall_rule.allowed_addresses[*].name
    description = "The names of the ADLS Gen 1 firewall rules"
}

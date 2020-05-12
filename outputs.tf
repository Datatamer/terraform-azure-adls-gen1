output "adls_id" {
    value = azurerm_data_lake_store.adlsg1.id
    description = "The ID of the ADLS Gen 1 resource"
}

output "adls_firewall_rule_id" {
    value = azurerm_data_lake_store_firewall_rule.allowed_addresses.id
    description = "The ID of the ADLS Gen 1 firewall rule"
}

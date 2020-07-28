output "adls_nsg_id" {
  value = azurerm_network_security_group.adls_nsg.id
  description = "ID of the network security group created for ADLS"
}

output "adls_nsg_name" {
  value = azurerm_network_security_group.adls_nsg.name
  description = "Name of the network security group created for ADLS"
}

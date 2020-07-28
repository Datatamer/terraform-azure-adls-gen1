resource "azurerm_network_security_group" "adls_nsg" {
  name = var.nsg_name
  location = var.location
  resource_group_name = var.resource_group_name
  tags = var.tags
}

resource "azurerm_subnet_network_security_group_association" "nsg_subnet_connection" {
  network_security_group_id = azurerm_network_security_group.adls_nsg.id
  subnet_id = data.azurerm_subnet.subnet.id
}

resource "azurerm_network_security_rule" "access_rule_for_adls" {
  name = "Access for ADLS"
  description = "Providing all port access to ADLS"
  access = "Allow"
  direction = "Inbound"
  network_security_group_name = azurerm_network_security_group.adls_nsg.name
  priority = 100
  protocol = "Tcp"
  resource_group_name = var.resource_group_name
  source_port_range = "*"
  destination_port_range = "*"
  source_address_prefix = var.adls_CIDR
  destination_address_prefix = "VirtualNetwork"
}

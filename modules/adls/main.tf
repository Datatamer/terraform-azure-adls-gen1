resource "azurerm_data_lake_store" "adlsg1" {
  name                     = var.adls_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  encryption_state         = var.adls_encryption_state
  encryption_type          = var.adls_encrytion_type
  firewall_allow_azure_ips = var.adls_firewall_allow_azure_ips
  tags                     = var.tags
}

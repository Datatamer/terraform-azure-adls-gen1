resource "azurerm_data_lake_store" "adlsg1" {
  name                = var.adls_name
  resource_group_name = data.azurerm_resource_group.tamr_rg.name
  location            = var.location
  encryption_state    = "Enabled"
  encryption_type     = "ServiceManaged"

  firewall_allow_azure_ips = "Enabled"
}

resource "azurerm_data_lake_store_firewall_rule" "allowed_addresses" {
  count = length(var.allowed_ips)

  name                = "${var.adls_name}-rule-${count.index}"
  account_name        = var.adls_name
  resource_group_name = data.azurerm_resource_group.tamr_rg.name
  start_ip_address    = var.allowed_ips[count.index]
  end_ip_address      = var.allowed_ips[count.index]
}

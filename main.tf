module "adls" {
  source                        = "./modules/adls"
  adls_name                     = var.adls_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  allowed_ips                   = var.allowed_ips
  adls_firewall_allow_azure_ips = var.adls_firewall_allow_azure_ips
  adls_encrytion_type           = var.adls_encrytion_type
  adls_encryption_state         = var.adls_encryption_state
  tags                          = var.tags
}

module "adls-nsg" {
  source              = "./modules/adls-nsg"
  adls_CIDR           = var.adls_CIDR
  location            = var.location
  nsg_name            = var.nsg_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
  subnet_name         = var.subnet_name
  vnet_name           = var.vnet_name
}

module "adls" {
  source                        = "./modules/adls"
  adls_name                     = var.adls_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  adls_encrytion_type           = var.adls_encrytion_type
  adls_encryption_state         = var.adls_encryption_state
  adls_firewall_allow_azure_ips = var.adls_firewall_allow_azure_ips
  tags                          = var.tags
}

module "adls-networking" {
  source                        = "./modules/adls-networking"
  adls_name                     = var.adls_name
  resource_group_name           = var.resource_group_name
  allowed_ips                   = var.allowed_ips
}

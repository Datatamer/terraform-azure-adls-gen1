module "adls" {
  source = "../../modules/adls"
  location = "eastus2"
  resource_group_name = "example-resource-group"
  adls_name = "exampleadls"
}

module "adls-networking" {
  source = "../../modules/adls-networking"
  resource_group_name = "example-resource-group"
  adls_name = module.adls.adls_name
  allowed_ips = ["1.2.3.4", "5.6.7.8"]
}

resource "azurerm_resource_group" "example-resource-group" {
  location = "eastus2"
  name = "example-resource-group"
}

module "adls" {
  source = "../../modules/adls"
  location = "eastus2"
  resource_group_name = azurerm_resource_group.example-resource-group.name
  adls_name = "exampleadls"
}

module "adls-networking" {
  source = "../../modules/adls-networking"
  resource_group_name = azurerm_resource_group.example-resource-group.name
  adls_name = module.adls.adls_name
  allowed_ips = ["1.2.3.4", "5.6.7.8"]
}

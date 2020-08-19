resource "azurerm_resource_group" "example-resource-group" {
  location = "eastus2"
  name = "example-resource-group"
}

module "complete-adls" {
  source = "../../"
  location = "eastus2"
  adls_name = "exampleadls"
  resource_group_name = azurerm_resource_group.example-resource-group.name
  allowed_ips = ["1.2.3.4", "5.6.7.8"]
}

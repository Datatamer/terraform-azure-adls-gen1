resource "azurerm_virtual_network" "test" {
  address_space = ["11.0.0.0/16"]
  location = "eastus2"
  name = "example-vnet"
  resource_group_name = "example-resource-group"
}

resource "azurerm_subnet" "test" {
  name                 = "example-subnet"
  resource_group_name  = "example-resource-group"
  virtual_network_name = azurerm_virtual_network.test.name
  address_prefixes = ["11.0.1.0/24"]
}

module "adls" {
  source = "../../"
  location = "eastus2"
  nsg_name = "examplensg"
  adls_name = "exampleadls"
  resource_group_name = "example-resource-group"
  allowed_ips = ["1.2.3.4", "5.6.7.8"]
  subnet_name = azurerm_subnet.test.name
  vnet_name = azurerm_virtual_network.test.name
}

module "complete-adls" {
  source = "../../"
  location = "eastus2"
  adls_name = "exampleadls"
  resource_group_name = "example-resource-group"
  allowed_ips = ["1.2.3.4", "5.6.7.8"]
}

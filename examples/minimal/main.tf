module "adls" {
  source = "../../"
  location = "eastus2"
  resource_group_name = "tamrDevGroup"
  adls_name = "adlstestjay"
}

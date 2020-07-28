variable "adls_CIDR" {
  type = string
  description = "CIDR of ADLS"
  default = "104.44.88.112/32"
}

variable "nsg_name" {
  type = string
  description = "Name of the network security group"
}

variable "location" {
  type = string
  description = "Azure location where the network security group will be created"
}

variable "resource_group_name" {
  type = string
  description = "Name of the resource group for the network security group"
}

variable "subnet_name" {
  type = string
  description = "Name of the subnet"
}

variable "vnet_name" {
  type = string
  description = "Name of the Virtual Network"
}

data "azurerm_subnet" "subnet" {
  name = var.subnet_name
  resource_group_name = var.resource_group_name
  virtual_network_name = var.vnet_name
}

variable "tags" {
  type = map(string)
  description = "Map of tags to attach to HBase cluster and storage account"
  default = {}
}

variable "resource_group_name" {
    description = "Name of resource group"
    type = string
}

variable "location" {
    description = "Location"
    type = string
}

data "azurerm_resource_group" "tamr_rg" {
    name = var.resource_group_name
}

variable "adls_name" {
    description = "Name of ADLS Gen1 deployment"
    type = string
    default = "tamradls"
}

variable "allowed_ips" {
    description = "List of IPs allowed through firewall"
    type = list(string)
    default = []
}

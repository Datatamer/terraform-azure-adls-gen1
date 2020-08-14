variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "location" {
  description = "Location"
  type        = string
}

data "azurerm_resource_group" "tamr_rg" {
  name = var.resource_group_name
}

variable "adls_name" {
  description = "Name of ADLS Gen1 deployment"
  type        = string
  default     = "tamradls"
}

variable "allowed_ips" {
  description = "List of IPs allowed through firewall"
  type        = list(string)
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Map of tags to attach to data store"
  default     = {}
}

variable "adls_firewall_allow_azure_ips" {
  type = string
  description = "Enable/Disable firewall allow ips. Accepted values are Enabled or Disabled"
  default = "Enabled"
}

variable "adls_encryption_state" {
  type = string
  description = "Enable/Disable adls encryption. Accepted values are Enabled or Disabled"
  default = "Enabled"
}

variable "adls_encrytion_type" {
  type = string
  description = "Encryption type for ADLS"
  default = "ServiceManaged"
}
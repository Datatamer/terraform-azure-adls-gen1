variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "location" {
  description = "Location"
  type        = string
}

variable "adls_name" {
  description = "Name of ADLS Gen1 deployment"
  type        = string
  default     = "tamradls"
}

variable "tags" {
  type        = map(string)
  description = "Map of tags to attach to data store"
  default     = {}
}

variable "adls_firewall_allow_azure_ips" {
  type        = string
  description = "Enable/Disable firewall allow ips. Accepted values are Enabled or Disabled"
  default     = "Enabled"
}

variable "adls_encryption_state" {
  type        = string
  description = "Enable/Disable ADLS encryption. Accepted values are Enabled or Disabled"
  default     = "Enabled"
}

variable "adls_encrytion_type" {
  type        = string
  description = "Encryption type for ADLS"
  default     = "ServiceManaged"
}

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
  type        = string
  description = "Enable/Disable firewall allow ips. Accepted values are Enabled or Disabled"
  default     = "Enabled"
}

variable "adls_encryption_state" {
  type        = string
  description = "Enable/Disable adls encryption. Accepted values are Enabled or Disabled"
  default     = "Enabled"
}

variable "adls_encrytion_type" {
  type        = string
  description = "Encryption type for ADLS"
  default     = "ServiceManaged"
}

variable "adls_CIDR" {
  type        = string
  description = "CIDR of ADLS. Reference: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-connectivity-from-vnets#enabling-connectivity-to-azure-data-lake-storage-gen1-from-vms-with-restricted-connectivity"
  default     = "104.44.88.112/32"
}

variable "nsg_name" {
  type        = string
  description = "Name of the network security group"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
}

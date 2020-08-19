variable "resource_group_name" {
  description = "Name of resource group"
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

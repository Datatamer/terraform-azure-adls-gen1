# Tamr Azure ADLS Gen1 module

This module creates ADLS Gen1 storage for Tamr on Azure.

# Resources Created
This modules creates:
* 1 ADLS Gen1 storage bucket
* Firewall rule for each input IP

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| azurerm | =2.11.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | =2.11.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| location | Location | `string` | n/a | yes |
| resource\_group\_name | Name of resource group | `string` | n/a | yes |
| adls\_encryption\_state | Enable/Disable adls encryption. Accepted values are Enabled or Disabled | `string` | `"Enabled"` | no |
| adls\_encrytion\_type | Encryption type for ADLS | `string` | `"ServiceManaged"` | no |
| adls\_firewall\_allow\_azure\_ips | Enable/Disable firewall allow ips. Accepted values are Enabled or Disabled | `string` | `"Enabled"` | no |
| adls\_name | Name of ADLS Gen1 deployment | `string` | `"tamradls"` | no |
| allowed\_ips | List of IPs allowed through firewall | `list(string)` | `[]` | no |
| tags | Map of tags to attach to data store | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| adls\_endpoint | Endpoint for ADLS Gen 1 resource |
| adls\_firewall\_rule\_ids | The IDs of the ADLS Gen 1 firewall rules |
| adls\_firewall\_rule\_names | The names of the ADLS Gen 1 firewall rules |
| adls\_id | The ID of the ADLS Gen 1 resource |
| adls\_name | The name of the ADLS Gen 1 resource |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# Tamr Azure ADLS Gen1 Firewall module

This module creates ADLS Gen1 firewall rules for Tamr on Azure.

# Resources Created
This modules creates:
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
| resource\_group\_name | Name of resource group | `string` | n/a | yes |
| adls\_name | Name of ADLS Gen1 deployment | `string` | `"tamradls"` | no |
| allowed\_ips | List of IPs allowed through firewall | `list(string)` | `[]` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

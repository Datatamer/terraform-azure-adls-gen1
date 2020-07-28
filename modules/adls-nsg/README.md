# Tamr Azure ADLS Gen1 Network Security Group Module

This module creates Network Security Group and rules for ADLS Gen 1

# Resources Created
This modules creates:
* 1 Network Security Group
* 1 Network Security Group rule

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
| location | Azure location where the network security group will be created | `string` | n/a | yes |
| nsg\_name | Name of the network security group | `string` | n/a | yes |
| resource\_group\_name | Name of the resource group for the network security group | `string` | n/a | yes |
| subnet\_name | Name of the subnet | `string` | n/a | yes |
| vnet\_name | Name of the Virtual Network | `string` | n/a | yes |
| adls\_CIDR | CIDR of ADLS | `string` | `"104.44.88.112/32"` | no |
| tags | Map of tags to attach to HBase cluster and storage account | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| adls\_nsg\_id | ID of the network security group created for ADLS |
| adls\_nsg\_name | Name of the network security group created for ADLS |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

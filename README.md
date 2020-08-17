# Tamr Complete Azure ADLS Gen1 module

This module creates ADLS Gen1 storage for Tamr on Azure.

# Examples
Refer the `/examples` directory for complete working examples.

# Resources Created
This modules creates:
* 1 ADLS Gen1 storage bucket
* Firewall rule for each input IP

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| azurerm | =2.11.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| location | Location | `string` | n/a | yes |
| resource\_group\_name | Name of resource group | `string` | n/a | yes |
| adls\_encryption\_state | Enable/Disable ADLS encryption. Accepted values are Enabled or Disabled | `string` | `"Enabled"` | no |
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

# References
This repo is based on:
* [terraform standard module structure](https://www.terraform.io/docs/modules/index.html#standard-module-structure)
* [templated terraform module](https://github.com/tmknom/template-terraform-module)

# Development
## Releasing new versions
* Update version contained in `VERSION`
* Document changes in `CHANGELOG.md`
* Create a tag in github for the commit associated with the version

# License
Apache 2 Licensed. See LICENSE for full details.

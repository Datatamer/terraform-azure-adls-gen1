# Tamr Azure ADLS Gen1 module

This module creates ADLS Gen1 storage for Tamr on Azure.

# Examples
TO BE UPDATED
## Basic
Inline example implementation of the module.  This is the most basic example of what it would look like to use this module.
```
module "minimal" {
  source = "git::https://github.com/Datatamer/terraform-template-repo?ref=0.1.0"
}
```
## Minimal
Smallest complete fully working example. This example might require extra resources to run the example.
- [Minimal](https://github.com/Datatamer/terraform-template-repo/tree/master/examples/minimal)

# Resources Created
This modules creates:
* 1 ADLS Gen1 storage bucket
* 1 firewall rule for each input IP

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
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
| adls\_name | Name of ADLS Gen1 deployment | `string` | `"tamradls"` | no |
| allowed\_ips | List of IPs allowed through firewall | `list(string)` | `[]` | no |
| tags | Map of tags to attach to data store | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
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

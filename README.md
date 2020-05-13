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

# Variables 
## Inputs
* `resource_group_name`: (required) Name of resource group
* `location`: (required) Location
* `adls_name`: (optional) Name of ADLS Gen1 deployment
* `allowed_ips`: (optional) List of IPs allowed through firewall
* `tags`: (optional) Map of tags to attach to data store

## Outputs
* `adls_id`: ID of the ADLS Gen 1 resource
* `adls_firewall_rule_ids`: IDs of the ADLS Gen 1 firewall rules

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

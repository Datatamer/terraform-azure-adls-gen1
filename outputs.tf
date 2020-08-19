output "adls_id" {
  value       = module.adls.adls_id
  description = "The ID of the ADLS Gen 1 resource"
}

output "adls_name" {
  value       = module.adls.adls_name
  description = "The name of the ADLS Gen 1 resource"
}

output "adls_firewall_rule_ids" {
  value       = module.adls.adls_firewall_rule_ids
  description = "The IDs of the ADLS Gen 1 firewall rules"
}

output "adls_firewall_rule_names" {
  value       = module.adls.adls_firewall_rule_names
  description = "The names of the ADLS Gen 1 firewall rules"
}

output "adls_endpoint" {
  value       = module.adls.adls_endpoint
  description = "Endpoint for ADLS Gen 1 resource"
}

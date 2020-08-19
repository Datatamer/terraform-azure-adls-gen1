output "adls_id" {
  value = module.adls.adls_id
}

output "adls_endpoint" {
  value = module.adls.adls_endpoint
}

output "adls_firewall_rules_ids" {
  value = module.adls-networking.adls_firewall_rule_ids
}

output "adls_firewall_rules_names" {
  value = module.adls-networking.adls_firewall_rule_names
}

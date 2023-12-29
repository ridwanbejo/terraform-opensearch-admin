output "opensearch_roles" {
  description = "Current OpenSearch roles"
  value       = module.tf_opensearch_role.opensearch_roles
}

output "opensearch_roles_mappings" {
  description = "Current OpenSearch roles mappings"
  value       = module.tf_opensearch_role.opensearch_roles_mappings
}


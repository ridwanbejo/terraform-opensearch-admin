output "opensearch_roles" {
  description = "List of OpenSearch roles"
  value       = [ for item in opensearch_role.roles : item.role_name ]
}

output "opensearch_roles_mappings" {
  description = "List of OpenSearch roles mappings"
  value       = [ for item in opensearch_roles_mapping.mappings : item.role_name ]
}

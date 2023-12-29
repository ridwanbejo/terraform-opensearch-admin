output "cluster_setting" {
  description = "List of OpenSearch cluster setting"
  value       = opensearch_cluster_settings.cluster_settings
}

output "audit_config" {
  description = "List of OpenSearch audit config"
  value       = opensearch_audit_config.audit_configs
}

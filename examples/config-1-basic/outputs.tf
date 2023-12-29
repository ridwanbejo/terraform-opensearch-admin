output "opensearch_cluster_setting" {
  description = "Current OpenSearch cluster setting"
  value       = module.tf_opensearch_config.cluster_setting
}

output "opensearch_audit_config" {
  description = "Current OpenSearch audit config"
  value       = module.tf_opensearch_config.audit_config
}


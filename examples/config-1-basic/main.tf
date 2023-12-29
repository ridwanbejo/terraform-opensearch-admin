module "tf_opensearch_config" {
  source           = "../../modules/config"
  cluster_settings = var.opensearch_cluster_setting
  audit_configs    = var.opensearch_audit_config 
}

module "tf_opensearch_role" {
  source         = "../../modules/role"
  roles          = var.opensearch_roles
  roles_mappings = var.opensearch_roles_mappings
}

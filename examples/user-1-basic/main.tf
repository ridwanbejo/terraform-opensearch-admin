module "tf_opensearch_user" {
  source = "../../modules/user"
  users  = var.opensearch_users
}

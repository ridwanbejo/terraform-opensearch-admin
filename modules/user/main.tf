resource "random_password" "password" {
  for_each = { for idx, item in var.users : item.username => item }

  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "opensearch_user" "users" {
    for_each = { for key, item in var.users : item.username => item }

    username      = each.value.username
    password      = random_password.password[each.value.username].result
    description   = each.value.description
    attributes    = each.value.attributes
    backend_roles = each.value.backend_roles
}
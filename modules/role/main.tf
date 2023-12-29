resource "opensearch_role" "roles" {
  for_each = { for idx, item in var.roles : item.role_name => item }
  
  role_name   = each.value.role_name
  description = each.value.description

  cluster_permissions = each.value.cluster_permissions

  dynamic "index_permissions" {
    for_each = (each.value.index_permissions != null ? each.value.index_permissions : {})

    content {
      index_patterns  = each.value.index_permissions.index_patterns
      allowed_actions = each.value.index_permissions.allowed_actions
    }
  }

  dynamic "tenant_permissions" {
    for_each = (each.value.tenant_permissions != null ? each.value.tenant_permissions : {})
    content {
      tenant_patterns = each.value.tenant_permissions.tenant_patterns
      allowed_actions = each.value.tenant_permissions.allowed_actions
    }
  }
}

resource "opensearch_roles_mapping" "mappings" {
  for_each = { for idx, item in var.roles_mappings : item.role_name => item }

  role_name     = each.value.role_name
  description   = each.value.description
  backend_roles = each.value.backend_roles
  hosts         = each.value.hosts
  users         = each.value.users
}
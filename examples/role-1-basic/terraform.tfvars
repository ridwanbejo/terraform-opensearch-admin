opensearch_roles = [
  {
    role_name   = "read_access_stg_users"
    description = "read access for stg users "

    cluster_permissions = [
      "cluster:admin/opensearch/observability/get",
      "cluster:admin/opendistro/alerting/alerts/get",
      "cluster:admin/opensearch/notifications/configs/get"
    ]

    index_permissions = {
      index_patterns  = ["*"]
      allowed_actions = ["read"]
    }

    tenant_permissions = {
      tenant_patterns = ["logstash-*"]
      allowed_actions = ["read"]
    }
  }
]

opensearch_roles_mappings = [
  {
    role_name   = "read_access_stg_users"
    description = "Mapping read_access_stg_users role to stg users "
    hosts       = [
      "https://localhost:9200"
    ]
    users       = [
      "stg_ms_auth",
      "stg_ms_payment"
    ]
  }
]
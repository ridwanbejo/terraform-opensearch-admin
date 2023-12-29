opensearch_users = [
  {
    username      = "dev_ms_auth"
    description   = "user for ms_auth (DEV)"
    backend_roles = [
      "observability_read_access"
    ]
  },
  {
    username      = "dev_ms_payment"
    description   = "user for ms_payment (DEV)"
    backend_roles = [
      "observability_read_access",
      "alerting_read_access"
    ]
  },
  {
    username      = "stg_ms_auth"
    description   = "user for ms_auth (STG)"
    backend_roles = []
  },
  {
    username      = "stg_ms_payment"
    description   = "user for ms_payment (STG)"
    backend_roles = []
  },
]
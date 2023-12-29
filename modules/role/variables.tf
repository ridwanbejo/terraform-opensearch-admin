variable "roles" {
    type = list(object({
        role_name           = string
        description         = optional(string)
        cluster_permissions = optional(list(string))
        index_permissions   = optional(map(any))
        tenant_permissions  = optional(map(any))
    }))
}

variable "roles_mappings" {
    type = list(object({
        role_name     = string
        description   = optional(string)
        backend_roles = optional(list(string))
        hosts         = optional(list(string))
        users         = optional(list(string))
    }))
}

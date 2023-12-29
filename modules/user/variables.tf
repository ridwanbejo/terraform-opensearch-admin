variable "users" {
    type = list(object({
        username      = string
        description   = optional(string)
        attributes    = optional(map(any))
        backend_roles = optional(list(string))
    }))
}

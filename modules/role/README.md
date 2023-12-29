# Terraform-OpenSearch-Admin submodule - role

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_opensearch"></a> [opensearch](#requirement\_opensearch) | 2.1.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_opensearch"></a> [opensearch](#provider\_opensearch) | 2.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [opensearch_role.roles](https://registry.terraform.io/providers/opensearch-project/opensearch/2.1.0/docs/resources/role) | resource |
| [opensearch_roles_mapping.mappings](https://registry.terraform.io/providers/opensearch-project/opensearch/2.1.0/docs/resources/roles_mapping) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_roles"></a> [roles](#input\_roles) | n/a | <pre>list(object({<br>        role_name           = string<br>        description         = optional(string)<br>        cluster_permissions = optional(list(string))<br>        index_permissions   = optional(map(any))<br>        tenant_permissions  = optional(map(any))<br>    }))</pre> | n/a | yes |
| <a name="input_roles_mappings"></a> [roles\_mappings](#input\_roles\_mappings) | n/a | <pre>list(object({<br>        role_name     = string<br>        description   = optional(string)<br>        backend_roles = optional(list(string))<br>        hosts         = optional(list(string))<br>        users         = optional(list(string))<br>    }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_opensearch_roles"></a> [opensearch\_roles](#output\_opensearch\_roles) | List of OpenSearch roles |
| <a name="output_opensearch_roles_mappings"></a> [opensearch\_roles\_mappings](#output\_opensearch\_roles\_mappings) | List of OpenSearch roles mappings |
<!-- END_TF_DOCS -->
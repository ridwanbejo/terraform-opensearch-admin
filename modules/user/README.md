# Terraform-OpenSearch-Admin submodule - user

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
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [opensearch_user.users](https://registry.terraform.io/providers/opensearch-project/opensearch/2.1.0/docs/resources/user) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_users"></a> [users](#input\_users) | n/a | <pre>list(object({<br>        username      = string<br>        description   = optional(string)<br>        attributes    = optional(map(any))<br>        backend_roles = optional(list(string))<br>    }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_opensearch_users"></a> [opensearch\_users](#output\_opensearch\_users) | List of OpenSearch users |
<!-- END_TF_DOCS -->
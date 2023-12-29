# Basic OpenSearch role submodule example

## Usage

To run this example you need to execute:

```
$ terraform init
$ terraform plan
$ terraform apply
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_opensearch"></a> [opensearch](#requirement\_opensearch) | 2.1.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tf_opensearch_role"></a> [tf\_opensearch\_role](#module\_tf\_opensearch\_role) | ../../modules/role | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_opensearch_roles"></a> [opensearch\_roles](#input\_opensearch\_roles) | n/a | `list(any)` | `[]` | no |
| <a name="input_opensearch_roles_mappings"></a> [opensearch\_roles\_mappings](#input\_opensearch\_roles\_mappings) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_opensearch_roles"></a> [opensearch\_roles](#output\_opensearch\_roles) | Current OpenSearch roles |
| <a name="output_opensearch_roles_mappings"></a> [opensearch\_roles\_mappings](#output\_opensearch\_roles\_mappings) | Current OpenSearch roles mappings |
<!-- END_TF_DOCS -->

# Basic OpenSearch config submodule example

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
| <a name="module_tf_opensearch_config"></a> [tf\_opensearch\_config](#module\_tf\_opensearch\_config) | ../../modules/config | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_opensearch_audit_config"></a> [opensearch\_audit\_config](#input\_opensearch\_audit\_config) | n/a | `any` | n/a | yes |
| <a name="input_opensearch_cluster_setting"></a> [opensearch\_cluster\_setting](#input\_opensearch\_cluster\_setting) | n/a | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_opensearch_audit_config"></a> [opensearch\_audit\_config](#output\_opensearch\_audit\_config) | Current OpenSearch audit config |
| <a name="output_opensearch_cluster_setting"></a> [opensearch\_cluster\_setting](#output\_opensearch\_cluster\_setting) | Current OpenSearch cluster setting |
<!-- END_TF_DOCS -->
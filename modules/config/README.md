# Terraform-OpenSearch-Admin submodule - config

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
| [opensearch_audit_config.audit_configs](https://registry.terraform.io/providers/opensearch-project/opensearch/2.1.0/docs/resources/audit_config) | resource |
| [opensearch_cluster_settings.cluster_settings](https://registry.terraform.io/providers/opensearch-project/opensearch/2.1.0/docs/resources/cluster_settings) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_audit_configs"></a> [audit\_configs](#input\_audit\_configs) | n/a | <pre>object({<br>    enabled = optional(bool)<br><br>    audit = optional(object({<br>      enable_rest              = optional(bool)<br>      disabled_rest_categories = optional(list(string))<br><br>      enable_transport              = optional(bool)<br>      disabled_transport_categories = optional(list(string))<br><br>      resolve_bulk_requests = optional(bool)<br>      log_request_body      = optional(bool)<br>      resolve_indices       = optional(bool)<br><br>      exclude_sensitive_headers = optional(bool)<br><br>      ignore_users    = optional(list(string))<br>      ignore_requests = optional(list(string))<br>    }))<br><br>    compliance = optional(object({<br>      internal_config = optional(bool)<br>      external_config = optional(bool)<br><br>      read_metadata_only = optional(bool)<br>      read_ignore_users  = optional(list(string))<br><br>      read_watched_fields = optional(list(map(any)))<br><br>      write_metadata_only   = optional(bool)<br>      write_log_diffs       = optional(bool)<br>      write_watched_indices = optional(list(string))<br>      write_ignore_users    = optional(list(string))<br>    }))<br>  })</pre> | n/a | yes |
| <a name="input_cluster_settings"></a> [cluster\_settings](#input\_cluster\_settings) | n/a | <pre>object({<br>    action_auto_create_index         = optional(string)<br>    action_destructive_requires_name = optional(bool)<br><br>    cluster_blocks_read_only              = optional(bool)<br>    cluster_blocks_read_only_allow_delete = optional(bool)<br>    cluster_indices_close_enable          = optional(bool)<br>    cluster_info_update_interval          = optional(string)<br>    cluster_max_shards_per_node           = optional(number)<br>    cluster_max_shards_per_node_frozen    = optional(number)<br>    cluster_no_master_block               = optional(string)<br>    <br>    cluster_persistent_tasks_allocation_enable           = optional(string)<br>    cluster_persistent_tasks_allocation_recheck_interval = optional(string)<br><br>    cluster_routing_allocation_allow_rebalance                     = optional(string)<br>    cluster_routing_allocation_balance_index                       = optional(number)<br>    cluster_routing_allocation_balance_shard                       = optional(number)<br>    cluster_routing_allocation_balance_threshold                   = optional(number)<br>    cluster_routing_allocation_cluster_concurrent_rebalance        = optional(number)<br>    cluster_routing_allocation_disk_threshold_enabled              = optional(bool)<br>    cluster_routing_allocation_disk_watermark_high                 = optional(string)<br>    cluster_routing_allocation_disk_watermark_low                  = optional(string)<br>    cluster_routing_allocation_enable                              = optional(string)<br>    cluster_routing_allocation_node_concurrent_incoming_recoveries = optional(number)<br>    cluster_routing_allocation_node_concurrent_outgoing_recoveries = optional(number)<br>    cluster_routing_allocation_node_concurrent_recoveries          = optional(number)<br>    cluster_routing_allocation_node_initial_primaries_recoveries   = optional(number)<br>    cluster_routing_allocation_same_shard_host                     = optional(bool)<br>    cluster_routing_allocation_total_shards_per_node               = optional(number)<br>    cluster_routing_rebalance_enable                               = optional(string)<br>    <br>    indices_breaker_fielddata_limit    = optional(string)<br>    indices_breaker_fielddata_overhead = optional(number)<br>    indices_breaker_request_limit      = optional(string)<br>    indices_breaker_request_overhead   = optional(number)<br>    indices_breaker_total_limit        = optional(string)<br>    indices_recovery_max_bytes_per_sec = optional(string)<br><br>    network_breaker_inflight_requests_limit    = optional(string)<br>    network_breaker_inflight_requests_overhead = optional(number)<br><br>    search_default_search_timeout = optional(string)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_audit_config"></a> [audit\_config](#output\_audit\_config) | List of OpenSearch audit config |
| <a name="output_cluster_setting"></a> [cluster\_setting](#output\_cluster\_setting) | List of OpenSearch cluster setting |
<!-- END_TF_DOCS -->
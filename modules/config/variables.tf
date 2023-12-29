variable "cluster_settings" {
  type = object({
    action_auto_create_index         = optional(string)
    action_destructive_requires_name = optional(bool)

    cluster_blocks_read_only              = optional(bool)
    cluster_blocks_read_only_allow_delete = optional(bool)
    cluster_indices_close_enable          = optional(bool)
    cluster_info_update_interval          = optional(string)
    cluster_max_shards_per_node           = optional(number)
    cluster_max_shards_per_node_frozen    = optional(number)
    cluster_no_master_block               = optional(string)
    
    cluster_persistent_tasks_allocation_enable           = optional(string)
    cluster_persistent_tasks_allocation_recheck_interval = optional(string)

    cluster_routing_allocation_allow_rebalance                     = optional(string)
    cluster_routing_allocation_balance_index                       = optional(number)
    cluster_routing_allocation_balance_shard                       = optional(number)
    cluster_routing_allocation_balance_threshold                   = optional(number)
    cluster_routing_allocation_cluster_concurrent_rebalance        = optional(number)
    cluster_routing_allocation_disk_threshold_enabled              = optional(bool)
    cluster_routing_allocation_disk_watermark_high                 = optional(string)
    cluster_routing_allocation_disk_watermark_low                  = optional(string)
    cluster_routing_allocation_enable                              = optional(string)
    cluster_routing_allocation_node_concurrent_incoming_recoveries = optional(number)
    cluster_routing_allocation_node_concurrent_outgoing_recoveries = optional(number)
    cluster_routing_allocation_node_concurrent_recoveries          = optional(number)
    cluster_routing_allocation_node_initial_primaries_recoveries   = optional(number)
    cluster_routing_allocation_same_shard_host                     = optional(bool)
    cluster_routing_allocation_total_shards_per_node               = optional(number)
    cluster_routing_rebalance_enable                               = optional(string)
    
    indices_breaker_fielddata_limit    = optional(string)
    indices_breaker_fielddata_overhead = optional(number)
    indices_breaker_request_limit      = optional(string)
    indices_breaker_request_overhead   = optional(number)
    indices_breaker_total_limit        = optional(string)
    indices_recovery_max_bytes_per_sec = optional(string)

    network_breaker_inflight_requests_limit    = optional(string)
    network_breaker_inflight_requests_overhead = optional(number)

    search_default_search_timeout = optional(string)
  })
}

variable "audit_configs" {
  type = object({
    enabled = optional(bool)

    audit = optional(object({
      enable_rest              = optional(bool)
      disabled_rest_categories = optional(list(string))

      enable_transport              = optional(bool)
      disabled_transport_categories = optional(list(string))

      resolve_bulk_requests = optional(bool)
      log_request_body      = optional(bool)
      resolve_indices       = optional(bool)

      exclude_sensitive_headers = optional(bool)

      ignore_users    = optional(list(string))
      ignore_requests = optional(list(string))
    }))

    compliance = optional(object({
      internal_config = optional(bool)
      external_config = optional(bool)

      read_metadata_only = optional(bool)
      read_ignore_users  = optional(list(string))

      read_watched_fields = optional(list(map(any)))

      write_metadata_only   = optional(bool)
      write_log_diffs       = optional(bool)
      write_watched_indices = optional(list(string))
      write_ignore_users    = optional(list(string))
    }))
  })
}

resource "opensearch_cluster_settings" "cluster_settings" {
  action_auto_create_index         = try(var.cluster_settings.action_auto_create_index, "true")
  action_destructive_requires_name = try(var.cluster_settings.action_destructive_requires_name, true)

  cluster_blocks_read_only              = try(var.cluster_settings.cluster_blocks_read_only, false)
  cluster_blocks_read_only_allow_delete = try(var.cluster_settings.cluster_blocks_read_only_allow_delete, false)
  cluster_indices_close_enable          = try(var.cluster_settings.cluster_indices_close_enable, true)
  cluster_info_update_interval          = try(var.cluster_settings.cluster_cluster_info_update_interval, "30s") 
  cluster_max_shards_per_node           = try(var.cluster_settings.cluster_max_shards_per_node, 1000)
  cluster_max_shards_per_node_frozen    = try(var.cluster_settings.cluster_max_shards_per_node_frozen, 3000)
  cluster_no_master_block               = try(var.cluster_settings.cluster_no_master_block, "write")
  
  cluster_persistent_tasks_allocation_enable           = try(var.cluster_settings.cluster_persistent_tasks_allocation_enable, "all")
  cluster_persistent_tasks_allocation_recheck_interval = try(var.cluster_settings.cluster_persistent_tasks_allocation_recheck_interval, "30s")

  cluster_routing_allocation_allow_rebalance                     = try(var.cluster_settings.cluster_routing_allocation_allow_rebalance, "indices_all_active")
  cluster_routing_allocation_balance_index                       = try(var.cluster_settings.cluster_routing_allocation_balance_index, 0.55)
  cluster_routing_allocation_balance_shard                       = try(var.cluster_settings.cluster_routing_allocation_balance_shard, 0.45)
  cluster_routing_allocation_balance_threshold                   = try(var.cluster_settings.cluster_routing_allocation_balance_threshold, 1.0)
  cluster_routing_allocation_cluster_concurrent_rebalance        = try(var.cluster_settings.cluster_routing_allocation_cluster_concurrent_rebalance, 2)
  cluster_routing_allocation_disk_threshold_enabled              = try(var.cluster_settings.cluster_routing_allocation_disk_threshold_enabled, true)
  cluster_routing_allocation_disk_watermark_high                 = try(var.cluster_settings.cluster_routing_allocation_disk_watermark_high, "90%")
  cluster_routing_allocation_disk_watermark_low                  = try(var.cluster_settings.cluster_routing_allocation_disk_watermark_low, "85%")
  cluster_routing_allocation_enable                              = try(var.cluster_settings.cluster_routing_allocation_enable, "all")
  cluster_routing_allocation_node_concurrent_incoming_recoveries = try(var.cluster_settings.cluster_routing_allocation_node_concurrent_incoming_recoveries, 2)
  cluster_routing_allocation_node_concurrent_outgoing_recoveries = try(var.cluster_settings.cluster_routing_allocation_node_concurrent_outgoing_recoveries, 2)
  cluster_routing_allocation_node_concurrent_recoveries          = try(var.cluster_settings.cluster_routing_allocation_node_concurrent_recoveries, 2)
  cluster_routing_allocation_node_initial_primaries_recoveries   = try(var.cluster_settings.cluster_routing_allocation_node_initial_primaries_recoveries, 4)
  cluster_routing_allocation_same_shard_host                     = try(var.cluster_settings.cluster_routing_allocation_same_shard_host, false)
  cluster_routing_allocation_total_shards_per_node               = try(var.cluster_settings.cluster_routing_allocation_total_shards_per_node, -1)
  cluster_routing_rebalance_enable                               = try(var.cluster_settings.cluster_routing_rebalance_enable, "all")
  
  indices_breaker_fielddata_limit    = try(var.cluster_settings.indices_breaker_fielddata_limit, "40%")
  indices_breaker_fielddata_overhead = try(var.cluster_settings.indices_breaker_fielddata_overhead, 1.03)
  indices_breaker_request_limit      = try(var.cluster_settings.indices_breaker_request_limit, "60%")
  indices_breaker_request_overhead   = try(var.cluster_settings.indices_breaker_request_overhead, 1)
  indices_breaker_total_limit        = try(var.cluster_settings.indices_breaker_total_limit, "70%")
  indices_recovery_max_bytes_per_sec = try(var.cluster_settings.indices_recovery_max_bytes_per_sec, "40mb")

  network_breaker_inflight_requests_limit    = try(var.cluster_settings.network_breaker_inflight_requests_limit, "100%")
  network_breaker_inflight_requests_overhead = try(var.cluster_settings.network_breaker_inflight_requests_overhead, 2)

  search_default_search_timeout = try(var.cluster_settings.search_default_search_timeout, "-1")
}

resource "opensearch_audit_config" "audit_configs" {
  enabled = try(var.audit_configs.enabled, true)

  audit {
    enable_rest              = try(var.audit_configs.audit.enable_rest, true)
    disabled_rest_categories = try(var.audit_configs.audit.disabled_rest_categories, [])

    enable_transport              = try(var.audit_configs.audit.enable_transport, true)
    disabled_transport_categories = try(var.audit_configs.audit.disabled_transport_categories, [])

    resolve_bulk_requests = try(var.audit_configs.audit.resolve_bulk_requests, false)
    log_request_body      = try(var.audit_configs.audit.log_request_body, true)
    resolve_indices       = try(var.audit_configs.audit.resolve_indices, true)

    # Note: if set false, AWS OpenSearch will return HTTP 409 (Conflict)
    exclude_sensitive_headers = try(var.audit_configs.audit.exclude_sensitive_headers, true)

    ignore_users    = try(var.audit_configs.audit.ignore_users, [])
    ignore_requests = try(var.audit_configs.audit.ignore_requests, [])
  }

  compliance {
    enabled = try(var.audit_configs.compliance.enabled, true)

    # Note: if both internal/external are set true, AWS OpenSearch will return HTTP 409 (Conflict)
    internal_config = try(var.audit_configs.compliance.internal_config, true)
    external_config = try(var.audit_configs.compliance.external_config, false)

    read_metadata_only = try(var.audit_configs.compliance.read_metadata_only, true)
    read_ignore_users  = try(var.audit_configs.compliance.read_ignore_users, [])

    # read_watched_field {
    #   index  = "read-index-1"
    #   fields = ["field-1", "field-2"]
    # }

    # read_watched_field {
    #   index  = "read-index-2"
    #   fields = ["field-3"]
    # }

    dynamic "read_watched_field" {
      for_each = ( var.audit_configs.compliance.read_watched_fields != null ? var.audit_configs.compliance.read_watched_fields: [] )
      content {
        index  = read_watched_field.index
        fields = read_watched_field.fields
      }
    }

    write_metadata_only   = try(var.audit_configs.compliance.write_metadata_only, true)
    write_log_diffs       = try(var.audit_configs.compliance.write_log_diffs, false)
    write_watched_indices = try(var.audit_configs.compliance.write_watched_indices, [])
    write_ignore_users    = try(var.audit_configs.compliance.write_ignore_users, [])
  }
}
opensearch_cluster_setting = {
    cluster_max_shards_per_node = 1000
}

opensearch_audit_config = {
    enabled = true

    audit = {
        enable_rest      = true
        enable_transport = true

        resolve_bulk_requests = true
        log_request_body      = true
        resolve_indices       = true

        exclude_sensitive_headers = true
    }

    compliance = {
        enabled = true

        internal_config = true
        external_config = false

        read_metadata_only = true

        write_metadata_only   = true
        write_log_diffs       = false
    }
}

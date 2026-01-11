resource "azurerm_network_connection_monitor" "network_connection_monitors" {
  for_each = var.network_connection_monitors

  location                      = each.value.location
  name                          = each.value.name
  network_watcher_id            = each.value.network_watcher_id
  notes                         = each.value.notes
  output_workspace_resource_ids = each.value.output_workspace_resource_ids
  tags                          = each.value.tags

  endpoint {
    address               = each.value.endpoint.address
    coverage_level        = each.value.endpoint.coverage_level
    excluded_ip_addresses = each.value.endpoint.excluded_ip_addresses
    dynamic "filter" {
      for_each = each.value.endpoint.filter != null ? [each.value.endpoint.filter] : []
      content {
        dynamic "item" {
          for_each = filter.value.item != null ? [filter.value.item] : []
          content {
            address = item.value.address
            type    = item.value.type
          }
        }
        type = filter.value.type
      }
    }
    included_ip_addresses = each.value.endpoint.included_ip_addresses
    name                  = each.value.endpoint.name
    target_resource_id    = each.value.endpoint.target_resource_id
    target_resource_type  = each.value.endpoint.target_resource_type
  }

  test_configuration {
    dynamic "http_configuration" {
      for_each = each.value.test_configuration.http_configuration != null ? [each.value.test_configuration.http_configuration] : []
      content {
        method       = http_configuration.value.method
        path         = http_configuration.value.path
        port         = http_configuration.value.port
        prefer_https = http_configuration.value.prefer_https
        dynamic "request_header" {
          for_each = http_configuration.value.request_header != null ? [http_configuration.value.request_header] : []
          content {
            name  = request_header.value.name
            value = request_header.value.value
          }
        }
        valid_status_code_ranges = http_configuration.value.valid_status_code_ranges
      }
    }
    dynamic "icmp_configuration" {
      for_each = each.value.test_configuration.icmp_configuration != null ? [each.value.test_configuration.icmp_configuration] : []
      content {
        trace_route_enabled = icmp_configuration.value.trace_route_enabled
      }
    }
    name                 = each.value.test_configuration.name
    preferred_ip_version = each.value.test_configuration.preferred_ip_version
    protocol             = each.value.test_configuration.protocol
    dynamic "success_threshold" {
      for_each = each.value.test_configuration.success_threshold != null ? [each.value.test_configuration.success_threshold] : []
      content {
        checks_failed_percent = success_threshold.value.checks_failed_percent
        round_trip_time_ms    = success_threshold.value.round_trip_time_ms
      }
    }
    dynamic "tcp_configuration" {
      for_each = each.value.test_configuration.tcp_configuration != null ? [each.value.test_configuration.tcp_configuration] : []
      content {
        destination_port_behavior = tcp_configuration.value.destination_port_behavior
        port                      = tcp_configuration.value.port
        trace_route_enabled       = tcp_configuration.value.trace_route_enabled
      }
    }
    test_frequency_in_seconds = each.value.test_configuration.test_frequency_in_seconds
  }

  test_group {
    destination_endpoints    = each.value.test_group.destination_endpoints
    enabled                  = each.value.test_group.enabled
    name                     = each.value.test_group.name
    source_endpoints         = each.value.test_group.source_endpoints
    test_configuration_names = each.value.test_group.test_configuration_names
  }
}


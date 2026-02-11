variable "network_connection_monitors" {
  description = <<EOT
Map of network_connection_monitors, attributes below
Required:
    - location
    - name
    - network_watcher_id
    - endpoint (block):
        - address (optional)
        - coverage_level (optional)
        - excluded_ip_addresses (optional)
        - filter (optional, block):
            - item (optional, block):
                - address (optional)
                - type (optional)
            - type (optional)
        - included_ip_addresses (optional)
        - name (required)
        - target_resource_id (optional)
        - target_resource_type (optional)
    - test_configuration (block):
        - http_configuration (optional, block):
            - method (optional)
            - path (optional)
            - port (optional)
            - prefer_https (optional)
            - request_header (optional, block):
                - name (required)
                - value (required)
            - valid_status_code_ranges (optional)
        - icmp_configuration (optional, block):
            - trace_route_enabled (optional)
        - name (required)
        - preferred_ip_version (optional)
        - protocol (required)
        - success_threshold (optional, block):
            - checks_failed_percent (optional)
            - round_trip_time_ms (optional)
        - tcp_configuration (optional, block):
            - destination_port_behavior (optional)
            - port (required)
            - trace_route_enabled (optional)
        - test_frequency_in_seconds (optional)
    - test_group (block):
        - destination_endpoints (required)
        - enabled (optional)
        - name (required)
        - source_endpoints (required)
        - test_configuration_names (required)
Optional:
    - notes
    - output_workspace_resource_ids
    - tags
EOT

  type = map(object({
    location                      = string
    name                          = string
    network_watcher_id            = string
    notes                         = optional(string)
    output_workspace_resource_ids = optional(set(string))
    tags                          = optional(map(string))
    endpoint = object({
      address               = optional(string)
      coverage_level        = optional(string)
      excluded_ip_addresses = optional(set(string))
      filter = optional(object({
        item = optional(object({
          address = optional(string)
          type    = optional(string) # Default: "AgentAddress"
        }))
        type = optional(string) # Default: "Include"
      }))
      included_ip_addresses = optional(set(string))
      name                  = string
      target_resource_id    = optional(string)
      target_resource_type  = optional(string)
    })
    test_configuration = object({
      http_configuration = optional(object({
        method       = optional(string) # Default: "Get"
        path         = optional(string)
        port         = optional(number)
        prefer_https = optional(bool) # Default: false
        request_header = optional(object({
          name  = string
          value = string
        }))
        valid_status_code_ranges = optional(set(string))
      }))
      icmp_configuration = optional(object({
        trace_route_enabled = optional(bool) # Default: true
      }))
      name                 = string
      preferred_ip_version = optional(string)
      protocol             = string
      success_threshold = optional(object({
        checks_failed_percent = optional(number)
        round_trip_time_ms    = optional(number)
      }))
      tcp_configuration = optional(object({
        destination_port_behavior = optional(string)
        port                      = number
        trace_route_enabled       = optional(bool) # Default: true
      }))
      test_frequency_in_seconds = optional(number) # Default: 60
    })
    test_group = object({
      destination_endpoints    = set(string)
      enabled                  = optional(bool) # Default: true
      name                     = string
      source_endpoints         = set(string)
      test_configuration_names = set(string)
    })
  }))
}


output "network_connection_monitors_id" {
  description = "Map of id values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_connection_monitors_endpoint" {
  description = "Map of endpoint values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "network_connection_monitors_location" {
  description = "Map of location values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.location if v.location != null && length(v.location) > 0 }
}
output "network_connection_monitors_name" {
  description = "Map of name values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_connection_monitors_network_watcher_id" {
  description = "Map of network_watcher_id values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.network_watcher_id if v.network_watcher_id != null && length(v.network_watcher_id) > 0 }
}
output "network_connection_monitors_notes" {
  description = "Map of notes values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.notes if v.notes != null && length(v.notes) > 0 }
}
output "network_connection_monitors_output_workspace_resource_ids" {
  description = "Map of output_workspace_resource_ids values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.output_workspace_resource_ids if v.output_workspace_resource_ids != null && length(v.output_workspace_resource_ids) > 0 }
}
output "network_connection_monitors_tags" {
  description = "Map of tags values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "network_connection_monitors_test_configuration" {
  description = "Map of test_configuration values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.test_configuration if v.test_configuration != null && length(v.test_configuration) > 0 }
}
output "network_connection_monitors_test_group" {
  description = "Map of test_group values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.test_group if v.test_group != null && length(v.test_group) > 0 }
}


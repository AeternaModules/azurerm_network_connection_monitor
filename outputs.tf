output "network_connection_monitors_endpoint" {
  description = "Map of endpoint values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.endpoint }
}
output "network_connection_monitors_location" {
  description = "Map of location values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.location }
}
output "network_connection_monitors_name" {
  description = "Map of name values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.name }
}
output "network_connection_monitors_network_watcher_id" {
  description = "Map of network_watcher_id values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.network_watcher_id }
}
output "network_connection_monitors_notes" {
  description = "Map of notes values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.notes }
}
output "network_connection_monitors_output_workspace_resource_ids" {
  description = "Map of output_workspace_resource_ids values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.output_workspace_resource_ids }
}
output "network_connection_monitors_tags" {
  description = "Map of tags values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.tags }
}
output "network_connection_monitors_test_configuration" {
  description = "Map of test_configuration values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.test_configuration }
}
output "network_connection_monitors_test_group" {
  description = "Map of test_group values across all network_connection_monitors, keyed the same as var.network_connection_monitors"
  value       = { for k, v in azurerm_network_connection_monitor.network_connection_monitors : k => v.test_group }
}


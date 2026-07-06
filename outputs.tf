output "network_connection_monitors" {
  description = "All network_connection_monitor resources"
  value       = azurerm_network_connection_monitor.network_connection_monitors
}
output "network_connection_monitors_endpoint" {
  description = "List of endpoint values across all network_connection_monitors"
  value       = [for k, v in azurerm_network_connection_monitor.network_connection_monitors : v.endpoint]
}
output "network_connection_monitors_location" {
  description = "List of location values across all network_connection_monitors"
  value       = [for k, v in azurerm_network_connection_monitor.network_connection_monitors : v.location]
}
output "network_connection_monitors_name" {
  description = "List of name values across all network_connection_monitors"
  value       = [for k, v in azurerm_network_connection_monitor.network_connection_monitors : v.name]
}
output "network_connection_monitors_network_watcher_id" {
  description = "List of network_watcher_id values across all network_connection_monitors"
  value       = [for k, v in azurerm_network_connection_monitor.network_connection_monitors : v.network_watcher_id]
}
output "network_connection_monitors_notes" {
  description = "List of notes values across all network_connection_monitors"
  value       = [for k, v in azurerm_network_connection_monitor.network_connection_monitors : v.notes]
}
output "network_connection_monitors_output_workspace_resource_ids" {
  description = "List of output_workspace_resource_ids values across all network_connection_monitors"
  value       = [for k, v in azurerm_network_connection_monitor.network_connection_monitors : v.output_workspace_resource_ids]
}
output "network_connection_monitors_tags" {
  description = "List of tags values across all network_connection_monitors"
  value       = [for k, v in azurerm_network_connection_monitor.network_connection_monitors : v.tags]
}
output "network_connection_monitors_test_configuration" {
  description = "List of test_configuration values across all network_connection_monitors"
  value       = [for k, v in azurerm_network_connection_monitor.network_connection_monitors : v.test_configuration]
}
output "network_connection_monitors_test_group" {
  description = "List of test_group values across all network_connection_monitors"
  value       = [for k, v in azurerm_network_connection_monitor.network_connection_monitors : v.test_group]
}


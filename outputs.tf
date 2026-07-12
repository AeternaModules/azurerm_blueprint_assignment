output "blueprint_assignments_id" {
  description = "Map of id values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.id }
}
output "blueprint_assignments_blueprint_name" {
  description = "Map of blueprint_name values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.blueprint_name }
}
output "blueprint_assignments_description" {
  description = "Map of description values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.description }
}
output "blueprint_assignments_display_name" {
  description = "Map of display_name values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.display_name }
}
output "blueprint_assignments_identity" {
  description = "Map of identity values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.identity }
}
output "blueprint_assignments_location" {
  description = "Map of location values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.location }
}
output "blueprint_assignments_lock_exclude_actions" {
  description = "Map of lock_exclude_actions values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.lock_exclude_actions }
}
output "blueprint_assignments_lock_exclude_principals" {
  description = "Map of lock_exclude_principals values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.lock_exclude_principals }
}
output "blueprint_assignments_lock_mode" {
  description = "Map of lock_mode values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.lock_mode }
}
output "blueprint_assignments_name" {
  description = "Map of name values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.name }
}
output "blueprint_assignments_parameter_values" {
  description = "Map of parameter_values values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.parameter_values }
}
output "blueprint_assignments_resource_groups" {
  description = "Map of resource_groups values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.resource_groups }
}
output "blueprint_assignments_target_subscription_id" {
  description = "Map of target_subscription_id values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.target_subscription_id }
}
output "blueprint_assignments_type" {
  description = "Map of type values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.type }
}
output "blueprint_assignments_version_id" {
  description = "Map of version_id values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.version_id }
}


output "blueprint_assignments_id" {
  description = "Map of id values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "blueprint_assignments_blueprint_name" {
  description = "Map of blueprint_name values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.blueprint_name if v.blueprint_name != null && length(v.blueprint_name) > 0 }
}
output "blueprint_assignments_description" {
  description = "Map of description values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "blueprint_assignments_display_name" {
  description = "Map of display_name values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "blueprint_assignments_identity" {
  description = "Map of identity values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "blueprint_assignments_location" {
  description = "Map of location values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.location if v.location != null && length(v.location) > 0 }
}
output "blueprint_assignments_lock_exclude_actions" {
  description = "Map of lock_exclude_actions values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.lock_exclude_actions if v.lock_exclude_actions != null && length(v.lock_exclude_actions) > 0 }
}
output "blueprint_assignments_lock_exclude_principals" {
  description = "Map of lock_exclude_principals values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.lock_exclude_principals if v.lock_exclude_principals != null && length(v.lock_exclude_principals) > 0 }
}
output "blueprint_assignments_lock_mode" {
  description = "Map of lock_mode values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.lock_mode if v.lock_mode != null && length(v.lock_mode) > 0 }
}
output "blueprint_assignments_name" {
  description = "Map of name values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "blueprint_assignments_parameter_values" {
  description = "Map of parameter_values values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.parameter_values if v.parameter_values != null && length(v.parameter_values) > 0 }
}
output "blueprint_assignments_resource_groups" {
  description = "Map of resource_groups values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.resource_groups if v.resource_groups != null && length(v.resource_groups) > 0 }
}
output "blueprint_assignments_target_subscription_id" {
  description = "Map of target_subscription_id values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.target_subscription_id if v.target_subscription_id != null && length(v.target_subscription_id) > 0 }
}
output "blueprint_assignments_type" {
  description = "Map of type values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.type if v.type != null && length(v.type) > 0 }
}
output "blueprint_assignments_version_id" {
  description = "Map of version_id values across all blueprint_assignments, keyed the same as var.blueprint_assignments"
  value       = { for k, v in azurerm_blueprint_assignment.blueprint_assignments : k => v.version_id if v.version_id != null && length(v.version_id) > 0 }
}


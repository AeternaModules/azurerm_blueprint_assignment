output "blueprint_assignments" {
  description = "All blueprint_assignment resources"
  value       = azurerm_blueprint_assignment.blueprint_assignments
}
output "blueprint_assignments_blueprint_name" {
  description = "List of blueprint_name values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.blueprint_name]
}
output "blueprint_assignments_description" {
  description = "List of description values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.description]
}
output "blueprint_assignments_display_name" {
  description = "List of display_name values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.display_name]
}
output "blueprint_assignments_identity" {
  description = "List of identity values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.identity]
}
output "blueprint_assignments_location" {
  description = "List of location values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.location]
}
output "blueprint_assignments_lock_exclude_actions" {
  description = "List of lock_exclude_actions values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.lock_exclude_actions]
}
output "blueprint_assignments_lock_exclude_principals" {
  description = "List of lock_exclude_principals values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.lock_exclude_principals]
}
output "blueprint_assignments_lock_mode" {
  description = "List of lock_mode values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.lock_mode]
}
output "blueprint_assignments_name" {
  description = "List of name values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.name]
}
output "blueprint_assignments_parameter_values" {
  description = "List of parameter_values values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.parameter_values]
}
output "blueprint_assignments_resource_groups" {
  description = "List of resource_groups values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.resource_groups]
}
output "blueprint_assignments_target_subscription_id" {
  description = "List of target_subscription_id values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.target_subscription_id]
}
output "blueprint_assignments_type" {
  description = "List of type values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.type]
}
output "blueprint_assignments_version_id" {
  description = "List of version_id values across all blueprint_assignments"
  value       = [for k, v in azurerm_blueprint_assignment.blueprint_assignments : v.version_id]
}


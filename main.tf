resource "azurerm_blueprint_assignment" "blueprint_assignments" {
  for_each = var.blueprint_assignments

  location                = each.value.location
  name                    = each.value.name
  target_subscription_id  = each.value.target_subscription_id
  version_id              = each.value.version_id
  lock_exclude_actions    = each.value.lock_exclude_actions
  lock_exclude_principals = each.value.lock_exclude_principals
  lock_mode               = each.value.lock_mode
  parameter_values        = each.value.parameter_values
  resource_groups         = each.value.resource_groups

  identity {
    identity_ids = each.value.identity.identity_ids
    type         = each.value.identity.type
  }
}


variable "blueprint_assignments" {
  description = <<EOT
Map of blueprint_assignments, attributes below
Required:
    - location
    - name
    - target_subscription_id
    - version_id
    - identity (block):
        - identity_ids (optional)
        - type (required)
Optional:
    - lock_exclude_actions
    - lock_exclude_principals
    - lock_mode
    - parameter_values
    - resource_groups
EOT

  type = map(object({
    location                = string
    name                    = string
    target_subscription_id  = string
    version_id              = string
    lock_exclude_actions    = optional(list(string))
    lock_exclude_principals = optional(list(string))
    lock_mode               = optional(string) # Default: "None"
    parameter_values        = optional(string)
    resource_groups         = optional(string)
    identity = object({
      identity_ids = optional(set(string))
      type         = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.blueprint_assignments : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_blueprint_assignment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: target_subscription_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: target_subscription_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: version_id
  #   source:    [from publishedblueprint.ValidateScopedVersionID] !ok
  # path: version_id
  #   source:    [from publishedblueprint.ValidateScopedVersionID] err != nil
  # path: parameter_values
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
  # path: resource_groups
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
  # path: lock_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: lock_exclude_principals[*]
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}


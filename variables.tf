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
    lock_mode               = optional(string)
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
  validation {
    condition = alltrue([
      for k, v in var.blueprint_assignments : (
        v.parameter_values == null || (can(jsondecode(v.parameter_values)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.blueprint_assignments : (
        v.resource_groups == null || (can(jsondecode(v.resource_groups)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.blueprint_assignments : (
        v.lock_exclude_principals == null || (alltrue([for x in v.lock_exclude_principals : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))]))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


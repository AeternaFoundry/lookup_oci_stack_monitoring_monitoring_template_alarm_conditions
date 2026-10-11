variable "stack_monitoring_monitoring_template_alarm_conditions_lookup" {
  description = <<EOT
Map of stack_monitoring_monitoring_template_alarm_conditions_lookup, attributes below
Required:
    - alarm_condition_id
    - monitoring_template_id
Optional:
    - compartment_id
    - metric_name
    - resource_types
    - state
    - status
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    alarm_condition_id     = string
    monitoring_template_id = string
    compartment_id         = optional(string)
    metric_name            = optional(list(string))
    resource_types         = optional(list(string))
    state                  = optional(string)
    status                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


data "oci_stack_monitoring_monitoring_template_alarm_conditions" "stack_monitoring_monitoring_template_alarm_conditions_lookup" {
  for_each = var.stack_monitoring_monitoring_template_alarm_conditions_lookup

  alarm_condition_id     = each.value.alarm_condition_id
  monitoring_template_id = each.value.monitoring_template_id
  compartment_id         = each.value.compartment_id
  metric_name            = each.value.metric_name
  resource_types         = each.value.resource_types
  state                  = each.value.state
  status                 = each.value.status

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


resource "databricks_sql_visualization" "sql_visualizations" {
  for_each = var.sql_visualizations

  name             = each.value.name
  options          = each.value.options
  query_id         = each.value.query_id
  type             = each.value.type
  description      = each.value.description
  query_plan       = each.value.query_plan
  visualization_id = each.value.visualization_id

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}


output "sql_visualizations_id" {
  description = "Map of id values across all sql_visualizations, keyed the same as var.sql_visualizations except keys with no id are omitted"
  value       = { for k, v in databricks_sql_visualization.sql_visualizations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_visualizations_description" {
  description = "Map of description values across all sql_visualizations, keyed the same as var.sql_visualizations except keys with no description are omitted"
  value       = { for k, v in databricks_sql_visualization.sql_visualizations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sql_visualizations_name" {
  description = "Map of name values across all sql_visualizations, keyed the same as var.sql_visualizations except keys with no name are omitted"
  value       = { for k, v in databricks_sql_visualization.sql_visualizations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sql_visualizations_options" {
  description = "Map of options values across all sql_visualizations, keyed the same as var.sql_visualizations except keys with no options are omitted"
  value       = { for k, v in databricks_sql_visualization.sql_visualizations : k => v.options if v.options != null && length(v.options) > 0 }
}
output "sql_visualizations_provider_config" {
  description = "Map of provider_config values across all sql_visualizations, keyed the same as var.sql_visualizations except keys with no provider_config are omitted"
  value       = { for k, v in databricks_sql_visualization.sql_visualizations : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_visualizations_query_id" {
  description = "Map of query_id values across all sql_visualizations, keyed the same as var.sql_visualizations except keys with no query_id are omitted"
  value       = { for k, v in databricks_sql_visualization.sql_visualizations : k => v.query_id if v.query_id != null && length(v.query_id) > 0 }
}
output "sql_visualizations_query_plan" {
  description = "Map of query_plan values across all sql_visualizations, keyed the same as var.sql_visualizations except keys with no query_plan are omitted"
  value       = { for k, v in databricks_sql_visualization.sql_visualizations : k => v.query_plan if v.query_plan != null && length(v.query_plan) > 0 }
}
output "sql_visualizations_type" {
  description = "Map of type values across all sql_visualizations, keyed the same as var.sql_visualizations except keys with no type are omitted"
  value       = { for k, v in databricks_sql_visualization.sql_visualizations : k => v.type if v.type != null && length(v.type) > 0 }
}
output "sql_visualizations_visualization_id" {
  description = "Map of visualization_id values across all sql_visualizations, keyed the same as var.sql_visualizations except keys with no visualization_id are omitted"
  value       = { for k, v in databricks_sql_visualization.sql_visualizations : k => v.visualization_id if v.visualization_id != null && length(v.visualization_id) > 0 }
}


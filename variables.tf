variable "sql_visualizations" {
  description = <<EOT
Map of sql_visualizations, attributes below
Required:
    - name
    - options
    - query_id
    - type
Optional:
    - description
    - query_plan
    - visualization_id
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    name             = string
    options          = string
    query_id         = string
    type             = string
    description      = optional(string)
    query_plan       = optional(string)
    visualization_id = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}


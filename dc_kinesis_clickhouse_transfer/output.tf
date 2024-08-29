// Grab newly create Clickhouse data
data "doublecloud_clickhouse" "target" {
  name       = doublecloud_clickhouse_cluster.target-clickhouse.name
  project_id = var.project_id
}

// This will output the database endpoint
output "clikchouse_connection" {
  description = "Clickhouse Connection profile"
  value       = data.doublecloud_clickhouse.target.connection_info
  sensitive   = true
}

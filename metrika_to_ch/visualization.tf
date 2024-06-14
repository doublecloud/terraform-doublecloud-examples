// Add a connection for to Clickhouse Cluster
// With this connection we can later add datasets / charts / dashboard
resource "doublecloud_workbook" "dwh-viewer" {
  count = var.enable_visualization ? 1 : 0

  project_id = var.project_id
  title      = "Metrika"

  config = jsonencode({ // Empty for now
    "datasets" : [],
    "charts" : [],
    "dashboards" : []
  })

  connect {
    name = "main"
    config = jsonencode({
      kind          = "clickhouse"
      cache_ttl_sec = 600
      host          = doublecloud_clickhouse_cluster.target-clickhouse.connection_info.host
      port          = 8443
      username      = doublecloud_clickhouse_cluster.target-clickhouse.connection_info.user
      secure        = "on"
      raw_sql_level = "off"
    })
    secret = doublecloud_clickhouse_cluster.target-clickhouse.connection_info.password
  }
}

// Add a connection to the ClickHouse cluster
// With this connection we can later add datasets / charts / dashboard
locals {
  table_suffix = doublecloud_transfer.metrica-transfer[0].id
}

resource "doublecloud_workbook" "metrica-viewer" {
  count = var.enable_visualization ? 1 : 0

  project_id = var.project_id
  title      = "Metrica for ${local.table_suffix}"

  config = jsonencode({
    "charts" : local.charts,
    "dashboards" : var.enable_visualization_dashboards ? tolist(local.dashboards) : [],
    "datasets" : var.enable_visualization_datasets ? tolist(local.datasets) : []
  })

  connect {
    name = "YaMetrika connection"
    config = jsonencode({
      kind          = "clickhouse"
      cache_ttl_sec = 600
      host          = doublecloud_clickhouse_cluster.target-clickhouse.connection_info.host
      port          = 8443
      username      = doublecloud_clickhouse_cluster.target-clickhouse.connection_info.user
      secure        = "on"
      raw_sql_level = "subselect"
    })
    secret = doublecloud_clickhouse_cluster.target-clickhouse.connection_info.password
  }
}

resource "doublecloud_clickhouse_cluster" "target" {
  project_id = var.project_id
  name       = "clickstream-clickhouse"
  region_id  = var.aws_region_id
  cloud_type = "aws"
  network_id = doublecloud_network.main.id

  resources {
    clickhouse {
      resource_preset_id = "s2-c2-m4"
      disk_size          = 32 * 1024 * 1024 * 1024 // 32 gb of Storage
      replica_count      = 1
    }
  }

  config {
    log_level       = "LOG_LEVEL_TRACE"
    max_connections = 120
  }
}

resource "doublecloud_clickhouse_cluster" "target-clickhouse" {
  project_id = var.project_id
  name       = "metrika-clickhouse"
  region_id  = var.region_id
  cloud_type = "aws"
  network_id = doublecloud_network.main-network.id

  resources {
    clickhouse {
      resource_preset_id = "s1-c2-m4"
      disk_size          = 32 * 1024 * 1024 * 1024 // 32 gb of Storage
      replica_count      = 1
    }
  }

  config {
    log_level       = "LOG_LEVEL_TRACE"
    max_connections = 120
  }

  access {
    data_services = ["visualization"]
    ipv4_cidr_blocks = [
      {
        value       = "${var.my_ip}/32"
        description = "My IP4 for local access"
      }
    ]
    ipv6_cidr_blocks = [
      {
        value       = "${var.my_ipv6}/128"
        description = "My IP6 for local access"
      }
    ]
  }
}

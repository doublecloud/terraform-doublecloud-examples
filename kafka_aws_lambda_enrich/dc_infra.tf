provider "doublecloud" {
  federation_id = var.federation_id
}

resource "doublecloud_network" "main-network" {
  project_id      = var.project_id
  name            = "lambda-network"
  region_id       = var.aws_region
  cloud_type      = "aws"
  ipv4_cidr_block = "10.0.0.0/16"
}

resource "doublecloud_kafka_cluster" "alpha-kafka" {
  project_id = var.project_id
  name       = "lambda-kafka-source"
  region_id  = var.aws_region
  cloud_type = "aws"
  network_id = doublecloud_network.main-network.id

  resources {
    kafka {
      resource_preset_id = "s1-c2-m4"
      disk_size          = 34359738368
      broker_count       = 1
      zone_count         = 1
    }
  }

  schema_registry {
    enabled = false
  }

  config {}

  access {
    ipv4_cidr_blocks = [
      {
        // My Local IP-v4 address
        value       = "${var.my_ip}/32"
        description = "My IP"
      }
    ]
    ipv6_cidr_blocks = [
      {
        // My Local IP-v6 address
        value       = "${var.my_ipv6}/128"
        description = "My IPv6"
      }
    ]
  }
}

resource "doublecloud_clickhouse_cluster" "target-clickhouse" {
  project_id = var.project_id
  name       = "landing-dwg"
  region_id  = var.aws_region
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

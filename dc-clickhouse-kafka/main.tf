// VPC for Kafka and Clickhouse networks
resource "doublecloud_network" "main-network" {
  project_id      = var.project_id
  name            = "default-network"
  region_id       = var.region_id
  cloud_type      = "aws"
  ipv4_cidr_block = var.ipv4_cidr
}

resource "doublecloud_clickhouse_cluster" "alpha-clickhouse" {
  project_id = var.project_id
  name       = "alpha-clickhouse"
  region_id  = var.region_id
  cloud_type = "aws"
  network_id = doublecloud_network.main-network.id

  resources {
    clickhouse {
      resource_preset_id = "s1-c2-m4"
      disk_size          = 34359738368
      replica_count      = 1
    }
  }

  config {
    log_level       = "LOG_LEVEL_TRACE"
    max_connections = 120

    kafka {
      security_protocol = "SASL_SSL"
      sasl_mechanism    = "SCRAM_SHA_512"
      sasl_username     = data.doublecloud_kafka.alpha-kafka.connection_info.user
      sasl_password     = data.doublecloud_kafka.alpha-kafka.connection_info.password
    }
  }

  access {
    ipv4_cidr_blocks = [
      {
        value       = var.ipv4_cidr
        description = "Peering network"
      },
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

resource "doublecloud_kafka_cluster" "alpha-kafka" {
  project_id = var.project_id
  name       = "alpha-kafka"
  region_id  = var.region_id
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

  access {
    ipv4_cidr_blocks = [
      {
        value       = var.ipv4_cidr
        description = "Office in Berlin"
      },
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

data "doublecloud_kafka" "alpha-kafka" {
  id         = doublecloud_kafka_cluster.alpha-kafka.id
  project_id = var.project_id
}

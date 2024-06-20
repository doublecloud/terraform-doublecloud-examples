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

locals {
  source_topic = "source-topic"
}

resource "doublecloud_transfer_endpoint" "stream-processor-source" {
  name       = "kafka-source"
  project_id = var.project_id
  settings {
    kafka_source {
      connection {
        cluster_id = doublecloud_kafka_cluster.alpha-kafka.id
      }
      auth {
        sasl {
          user      = "admin"
          mechanism = "KAFKA_MECHANISM_SHA512"
        }
      }
      topic_name = local.source_topic
    }
  }
}

resource "doublecloud_transfer_endpoint" "stream-processor-target" {
  name       = "kafka-target"
  project_id = var.project_id
  settings {
    kafka_target {
      connection {
        cluster_id = doublecloud_kafka_cluster.alpha-kafka.id
      }
      auth {
        sasl {
          user      = "admin"
          mechanism = "KAFKA_MECHANISM_SHA512"
        }
      }
      topic_settings {
        topic {
          topic_name    = "target-topic"
          save_tx_order = false
        }
      }
      serializer {
        json {}
      }
    }
  }
}

resource "doublecloud_transfer" "clickstream-transfer" {
  name       = "stream-processor-transfer"
  project_id = var.project_id
  source     = doublecloud_transfer_endpoint.stream-processor-source.id
  target     = doublecloud_transfer_endpoint.stream-processor-target.id
  type       = "INCREMENT_ONLY"
  activated  = false

  transformation = {
    transformers = [
      {
        lambda_function = {
          name       = local.source_topic
          name_space = ""
          options = {
            cloud_function        = "example-cloud-function"
            cloud_function_url    = aws_lambda_function_url.enricher.function_url
            number_of_retries     = 3
            buffer_size           = "1.0 MB"
            buffer_flush_interval = "1s"
            invocation_timeout    = "30s"
            headers = [
              {
                key   = "Authorization"
                value = "Bearer example-token"
              }
            ]
          }
        }
      },
    ]
  }
}

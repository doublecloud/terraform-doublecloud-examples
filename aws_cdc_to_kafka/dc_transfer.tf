// AWS RDS Source
resource "doublecloud_transfer_endpoint" "pg-source" {
  name       = "chinook-pg-source"
  project_id = var.dc_project_id
  settings {
    postgres_source {
      connection {
        on_premise {
          tls_mode {
            // by default we connect via VPC Peering and using TLS encryption, so we must specify ca-cert
            ca_certificate = file("../assets/aws-global-bundle.pem")
          }
          hosts = [
            // AWS RDS host-name
            aws_db_instance.cdc_database.address
          ]
          port = 5432
        }
      }
      database = aws_db_instance.cdc_database.db_name
      user     = aws_db_instance.cdc_database.username
      password = var.db_password // here we pass it from variables, but can be value from AWS SecretManager
    }
  }
}

// DC Kafka target
resource "doublecloud_transfer_endpoint" "kafka-cdc-target" {
  name       = "kafka-cdc-target"
  project_id = var.dc_project_id
  settings {
    kafka_target {
      connection {
        cluster_id = doublecloud_kafka_cluster.input-kafka.id
      }
      auth {
        sasl {
          user      = "admin"
          mechanism = "KAFKA_MECHANISM_SHA512"
        }
      }
      topic_settings {
        topic_prefix = "cdc-data"
      }
      serializer {
        debezium {}
      }
    }
  }
}

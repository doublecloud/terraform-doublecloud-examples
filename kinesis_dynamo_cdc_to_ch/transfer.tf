resource "doublecloud_transfer_endpoint" "source" {
  name       = "kinesis-source"
  project_id = var.project_id
  settings {
    kinesis_source {
      aws_access_key_id     = var.aws_access_key_id
      aws_secret_access_key = var.aws_secret_access_key
      region                = var.aws_region
      stream_name           = aws_kinesis_stream.realtime-data-stream
      parser {
        json {
          schema {
            fields {
              field {
                name     = "ID"
                type     = "utf8"
                key      = true
                required = true
                path     = "dynamodb.NewImage.ID.S"
              }
              field {
                name     = "Name"
                type     = "utf8"
                key      = false
                required = false
                path     = "dynamodb.NewImage.Name.S"
              }
              field {
                name     = "Age"
                type     = "int64"
                key      = false
                required = false
                path     = "dynamodb.NewImage.Age.N"
              }
              field {
                name     = "LastEvent"
                type     = "utf8"
                key      = false
                required = false
                path     = "eventName"
              }
            }
          }
          null_keys_allowed = false
          add_rest_column   = true
        }
      }
    }
  }
}

resource "doublecloud_transfer_endpoint" "target" {
  name       = "target"
  project_id = var.project_id
  settings {
    clickhouse_target {
      clickhouse_cleanup_policy = "DROP"
      connection {
        address {
          cluster_id = var.cluster_id
        }
        database = "default"
        user     = "admin"
      }
    }
  }
}

resource "doublecloud_transfer" "clickstream-transfer" {
  name       = "transfer"
  project_id = var.project_id
  source     = doublecloud_transfer_endpoint.source.id
  target     = doublecloud_transfer_endpoint.target.id
  type       = "INCREMENT_ONLY"
  activated  = true
}

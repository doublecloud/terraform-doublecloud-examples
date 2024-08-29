resource "doublecloud_transfer_endpoint" "source" {
  name       = "kinesis_source"
  project_id = var.project_id
  settings {
    kinesis_source {
      aws_access_key_id     = var.aws_access_key_id
      aws_secret_access_key = var.aws_secret_access_key
      region                = var.aws_region_id
      stream_name           = var.stream_name
      parser {
        json {
          schema {
            fields {
              field {
                name     = "Topic"
                type     = "string"
                key      = true
                required = true
              }
              field {
                name     = "Partition"
                type     = "uint32"
                key      = true
                required = true
              }
              field {
                name     = "Offset"
                type     = "uint32"
                key      = true
                required = true
              }
              field {
                name     = "Timestamp"
                type     = "datetime"
                key      = false
                required = false
              }
              field {
                name     = "Headers"
                type     = "string"
                key      = false
                required = false
              }
              field {
                name     = "Value"
                type     = "string"
                key      = false
                required = false
              }
              field {
                name     = "Transfer_commit_time"
                type     = "uint64"
                key      = false
                required = false
              }
              field {
                name     = "Transfer_delete_time"
                type     = "uint64"
                key      = false
                required = false
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
  count      = var.enable_transfer ? 1 : 0
  name       = "clickstream-target"
  project_id = var.project_id
  settings {
    clickhouse_target {
      clickhouse_cleanup_policy = "DROP"
      connection {
        address {
          cluster_id = doublecloud_clickhouse_cluster.target.id
        }
        database = "default"
        user     = "admin"
      }
    }
  }
}

resource "doublecloud_transfer" "clickstream" {
  count      = var.enable_transfer ? 1 : 0
  name       = "clickstream-transfer"
  project_id = var.project_id
  source     = doublecloud_transfer_endpoint.source.id
  target     = doublecloud_transfer_endpoint.target[count.index].id
  type       = "INCREMENT_ONLY"
  activated  = true
}


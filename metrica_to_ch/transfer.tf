resource "doublecloud_transfer_endpoint" "metrica-source" {
  count      = var.enable_transfer ? 1 : 0
  name       = "metrica-source"
  project_id = var.project_id
  settings {
    metrica_source {
      counter_ids = var.metrica_counter_ids
      token       = var.metrica_token
      metrica_stream {
        stream_type = "METRIKA_STREAM_TYPE_HITS_V2"
      }
      metrica_stream {
        stream_type = "METRIKA_STREAM_TYPE_VISITS"
      }
    }
  }
}

resource "doublecloud_transfer_endpoint" "clickhouse-target" {
  count      = var.enable_transfer ? 1 : 0
  name       = "metrica-target"
  project_id = var.project_id
  settings {
    clickhouse_target {
      clickhouse_cleanup_policy = "DROP"
      connection {
        address {
          cluster_id = doublecloud_clickhouse_cluster.target-clickhouse.id
        }
        database = "default"
        user     = "admin"
      }
    }
  }
}

resource "doublecloud_transfer" "metrica-transfer" {
  count      = var.enable_transfer ? 1 : 0
  name       = "metrica-transfer"
  project_id = var.project_id
  source     = doublecloud_transfer_endpoint.metrica-source[count.index].id
  target     = doublecloud_transfer_endpoint.clickhouse-target[count.index].id
  type       = "INCREMENT_ONLY"
  activated  = true
}

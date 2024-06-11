resource "doublecloud_transfer_endpoint" "metrika-source" {
  count      = var.enable_transfer ? 1 : 0
  name       = "metrika-source"
  project_id = var.project_id
  settings {
		metrika_source {
			counter_ids = var.metrika_counter_ids
			token       = var.metrika_token
			metrika_stream {
				stream_type = "METRIKA_STREAM_TYPE_HITS_V2"
			}
			metrika_stream {
				stream_type = "METRIKA_STREAM_TYPE_VISITS"
			}
		}
	}
}

resource "doublecloud_transfer_endpoint" "clickhouse-target" {
  count      = var.enable_transfer ? 1 : 0
  name       = "metrika-target"
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

resource "doublecloud_transfer" "metrika-transfer" {
  count      = var.enable_transfer ? 1 : 0
  name       = "metrika-transfer"
  project_id = var.project_id
  source     = doublecloud_transfer_endpoint.metrika-source[count.index].id
  target     = doublecloud_transfer_endpoint.clickhouse-target[count.index].id
  type       = "INCREMENT_ONLY"
  activated  = true
}

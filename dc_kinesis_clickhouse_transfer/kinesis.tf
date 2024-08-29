resource "aws_kinesis_stream" "terraform_stream_input" {
  name                = var.stream_name
  shard_level_metrics = ["IncomingBytes", "OutgoingBytes"]
  retention_period    = 24
  shard_count         = 0

  stream_mode_details {
    stream_mode = "ON_DEMAND"
  }

  tags = {
    Environment = "test"
  }
}

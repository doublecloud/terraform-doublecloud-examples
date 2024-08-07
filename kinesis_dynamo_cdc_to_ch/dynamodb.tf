resource "aws_dynamodb_table" "my_table" {
  name           = "demo-table"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "ID"
  attribute {
    name = "ID"
    type = "S"
  }
  attribute {
    name = "Name"
    type = "S"
  }
  attribute {
    name = "Age"
    type = "N"
  }
  tags = {
    environment = "dev"
  }
}

locals {
  dynamodb_data = {
    "Item1" : {
      "ID" : {
        "S" : "1"
      },
      "Name" : {
        "S" : "Ali"
      },
      "Age" : {
        "N" : 20
      }
    },
    "Item2" : {
      "ID" : {
        "S" : "2"
      },
      "Name" : {
        "S" : "Sara"
      },
      "Age" : {
        "N" : 20
      }
    }
  }
}

resource "aws_dynamodb_table_item" "dynamodb_schema_table_item" {
  for_each   = local.dynamodb_data
  table_name = aws_dynamodb_table.my_table.name
  hash_key   = "ID"
  item       = jsonencode(each.value)
}

resource "aws_kinesis_stream" "realtime-data-stream" {
  name = "${aws_dynamodb_table.my_table}_stream"

  stream_mode_details {
    stream_mode = "ON_DEMAND"
  }

  tags = {
    Name = "realtime-data-stream"
  }
}

resource "aws_dynamodb_kinesis_streaming_destination" "example" {
  stream_arn = aws_kinesis_stream.realtime-data-stream.arn
  table_name = aws_dynamodb_table.my_table.name
}

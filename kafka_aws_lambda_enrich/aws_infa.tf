provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      hashicorp-learn = "lambda-api-gateway"
    }
  }

}

resource "random_pet" "lambda_bucket_name" {
  prefix = "dc-tf-examples-enricher"
  length = 4
}

resource "aws_s3_bucket" "lambda_bucket" {
  bucket = random_pet.lambda_bucket_name.id
}

resource "aws_s3_bucket_ownership_controls" "lambda_bucket" {
  bucket = aws_s3_bucket.lambda_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "lambda_bucket" {
  depends_on = [aws_s3_bucket_ownership_controls.lambda_bucket]

  bucket = aws_s3_bucket.lambda_bucket.id
  acl    = "private"
}

data "archive_file" "lambda_enricher" {
  type = "zip"

  source_dir  = "${path.module}/enricher"
  output_path = "${path.module}/enricher.zip"
}

resource "aws_s3_object" "lambda_enricher" {
  bucket = aws_s3_bucket.lambda_bucket.id

  key    = "enricher.zip"
  source = data.archive_file.lambda_enricher.output_path

  etag = filemd5(data.archive_file.lambda_enricher.output_path)
}

resource "aws_lambda_function" "enricher" {
  function_name = "Enricher"

  s3_bucket = aws_s3_bucket.lambda_bucket.id
  s3_key    = aws_s3_object.lambda_enricher.key

  runtime = "nodejs20.x"
  handler = "main.handler"

  source_code_hash = data.archive_file.lambda_enricher.output_base64sha256

  role = aws_iam_role.lambda_exec.arn
}

resource "aws_lambda_function_url" "enricher" {
  function_name      = aws_lambda_function.enricher.function_name
  authorization_type = "NONE"
}

resource "aws_cloudwatch_log_group" "enricher" {
  name = "/aws/lambda/${aws_lambda_function.enricher.function_name}"

  retention_in_days = 30
}

resource "aws_iam_role" "lambda_exec" {
  name = "serverless_lambda"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Sid    = ""
      Principal = {
        Service = "lambda.amazonaws.com"
      }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  role       = aws_iam_role.lambda_exec.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

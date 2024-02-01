provider "aws" {
  region = "us-east-1"
}

resource "aws_lambda_layer_version" "exigent-layer" {
  filename   = "lambda_layer_payload.zip"
  layer_name = "lambda_layer_name"
  skip_destroy = true
  compatible_runtimes = ["python3.9"]
}
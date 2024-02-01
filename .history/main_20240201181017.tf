provider "aws" {
  region = "us-east-1"
}

resource "aws_lambda_layer_version" "exigent-layer" {
  filename            = "python.zip"
  layer_name          = "exigent_layer"
  skip_destroy        = true
  compatible_runtimes = ["python3.9","python3.11","python3.12"]
  compatible_architectures = ["x86_64"]

}
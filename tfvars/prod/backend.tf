terraform {
  backend "s3" {
    bucket = "chandureddy-prod"
    key = "prod-state-file"
    region = "us-east-1"
    dynamodb_table = "chandureddy-prod"
  }
}
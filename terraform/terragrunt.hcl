terraform {
  source = "./static-s3-acm"
}

remote_state {
  backend = "s3"

  config = {
    encrypt        = true
    region         = "us-east-1"
    key            = "docs/terraform.tfstate"
    bucket         = "terraform-states-${get_aws_account_id()}"
    dynamodb_table = "terraform-locks-${get_aws_account_id()}"
  }
}

inputs = {
  region = "us-east-1"
  root_domain_name = "insightdatascience.link"
  subdomain = "docs"
}
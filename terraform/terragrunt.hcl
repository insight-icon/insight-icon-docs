terraform {
  source = "./static-s3-acm"

  extra_arguments "custom_vars" {
    commands  = get_terraform_commands_that_need_vars()

    required_var_files = [
        "account.tfvars"
      ]
  }
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
  root_domain_name = "insightdatascience.pub"
  subdomain = "docs"
}
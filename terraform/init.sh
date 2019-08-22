#!/usr/bin/env bash
ACCOUNT_ID=$1
REMOTE_STATE_REGION=us-east-1
ROOT_DOMAIN_NAME=$2
cat<<EOF > ./account.tfvars
account_id = "$ACCOUNT_ID"
aws_allowed_account_ids = ["$ACCOUNT_ID"]
terraform_state_region = "$REMOTE_STATE_REGION"
terraform_state_bucket = "terraform-states-$ACCOUNT_ID"
EOF

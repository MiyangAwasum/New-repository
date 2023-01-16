
# Configure the AWS Provider


provider "aws" {
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "studiesbukect"
    key    = "global/terraformstate.tfstate"
    dynamodb_table = "terraformlock"
    encrypt = true
    profile = "default"
    region = "us-east-1"
  }
}



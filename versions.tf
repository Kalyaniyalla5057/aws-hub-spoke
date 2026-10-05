terraform {
  backend "s3" {
    bucket       = "aws-devops-s3-bucket-0605"
    key          = "network/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

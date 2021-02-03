terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-north-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0fd0c597c32858273"
  instance_type = "t3.nano"
}

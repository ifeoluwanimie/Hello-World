terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "based_server" {
  ami           = "ami-09b90e09742640522"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

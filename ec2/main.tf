terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0df99b3a8349462c6"
  instance_type = "t2.micro"

  tags = {
    # Name = "ExampleAppServerInstance"
    Name = var.instance_name
  }
}

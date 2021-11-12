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
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0567e0d2b4b2169ae"
  instance_type = "t2.micro"
  key_name        = aws_key_pair.ajesh-zara-keypair.key_name
  user_data = "${file("user-data.sh")}"

  security_groups = [aws_security_group.welcome_demo_ajesh_zara.name]

  tags = {
    Name = var.instance_name
  }
}

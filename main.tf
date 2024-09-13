terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"



  
}

resource "aws_instance" "app_server" {
  ami           = "ami-04fe22dfadec6f0b6" #aws linux 2023
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleServerInstance"
  }
}

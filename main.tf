provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = var.instance_type

  tags = {
      Name = var.instance_name
  }
}
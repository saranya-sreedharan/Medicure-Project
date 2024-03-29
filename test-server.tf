provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "test_server" {
  ami           = "ami-0430580de6244e02e"
  instance_type = "t2.micro"
  key_name      = "salini"

  vpc_security_group_ids = ["sg-0fca6397d8926fb5b"]  

  tags = {
    Name = "test-server"
  }
}

output "server_ip" {
  value = aws_instance.test_server.public_ip
}


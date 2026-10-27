resource "aws_instance" "Terraform" {
  ami                    = "ami-0055977a6e828a4f4"
  vpc_security_group_ids = [aws_security_group.allow_all_Terraform.id]
  instance_type          = "t3.micro"

  tags = {
    Name      = "Terraform"
    Terraform = "true"
  }
}

resource "aws_security_group" "allow_all_Terraform" {
  name = "allow_all_Terraform"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "allow_all_Terraform"
  }
}
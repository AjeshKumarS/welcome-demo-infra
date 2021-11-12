resource "aws_security_group" "welcome_demo_ajesh_zara" {
  name        = "welcome_demo_ajesh_zara"
  description = "security group for welcome_demo instance"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["103.149.159.100/32"]
  }

  tags = {
    Name = "ajesh_zara_welcome_demo"
  }
}

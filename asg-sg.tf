resource "aws_security_group" "lt-sg" {
  name   = "my security group for ASG"
  vpc_id = "vpc-067c61a5924f43df1"

  # inbound rules
  # http access from anywhere
  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    # security_groups = [aws_security_group.alb-sg,id]
  }


  # ssh access from anywhere
  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  # outbound rules
  # internet access to anywhere
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

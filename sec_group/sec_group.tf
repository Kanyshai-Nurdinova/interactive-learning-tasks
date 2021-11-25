resource "aws_default_security_group" "external_by_terraform" {
  vpc_id = aws_vpc.mainvpc.id

   ingress_cidr_blocks = [
    "50.194.68.230/32",
    "50.194.68.231/32",
    "0.0.0.0/0",
    "0.0.0.0/0",

  ]
  ingress_rules = [
    "https-443-tcp",
    "http-80-tcp",
  ]

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
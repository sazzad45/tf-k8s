resource "aws_security_group" "security" {
  name = "allow-all"

  vpc_id = "vpc-0c6c9289a521c1991" //(can be use reomte state)

  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

##DB SG

resource "aws_security_group" "db_security" {
  name = "allow-all"

  vpc_id = "vpc-0c6c9289a521c1991" //(can be use reomte state)

  ingress {
    cidr_blocks = ["172.40.100.0/22"]
    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}
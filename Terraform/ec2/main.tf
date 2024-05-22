
resource "aws_key_pair" "test-key" {
  key_name   = var.key_pair_name
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "local_file" "tf_key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = var.file_name

}


data "aws_ami" "ubuntu_ami" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter{
    name = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
  
}



resource "aws_instance" "test_ec2" {
  
  ami                         = data.aws_ami.ubuntu_ami.id
  instance_type               = var.instance_type
  key_name                    = var.key_pair_name
  security_groups             = ["${aws_security_group.security.id}"]
  associate_public_ip_address = true
  subnet_id                   = subnet-67891832 //(can be use reomte state)

  tags = {
    Name = var.instance_tag[count.index]
  }
}
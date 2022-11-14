#Security Group
resource "aws_security_group" "sg" {
  name        = "ec2-instance-sg"
  description = "Security group to allow inbound/outbound trafic"
  vpc_id      = var.vpc_id
   ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
}

resource "tls_private_key" "tls" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = tls_private_key.tls.public_key_openssh
}

resource "aws_instance" "ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.instance.key_name
  subnet_id              = var.public_subnet
  vpc_security_group_ids = [aws_security_group.sg.id]
  root_block_device {
    volume_type = var.volume_type
    volume_size = var.volume_size
    encrypted   = var.encrypted
  }
}

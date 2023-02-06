// Launching an EC2 (Amazon Linux 2)

resource "aws_instance" "public_instance1" {
  ami                           = "ami-007868005aea67c54"
  instance_type                 = "t2.micro"
  key_name                      = "tf-key-pair"
  subnet_id                     = aws_subnet.public_subnet.id 
  vpc_security_group_ids        = [aws_security_group.server_sg.id]
  user_data                     = data.cloudinit_config.server_config.rendered
  associate_public_ip_address   = true
}

resource "aws_instance" "private_instance1" {
  ami                           = "ami-007868005aea67c54"
  instance_type                 = "t2.micro"
  key_name                      = "tf-key-pair"
  subnet_id                     = aws_subnet.private_subnet.id
  vpc_security_group_ids        = [aws_security_group.server_sg.id]
  user_data                     = data.cloudinit_config.server_config.rendered
  associate_public_ip_address   = true
}

resource "aws_security_group" "server_sg" {
  name = "Test-SG"
  vpc_id = aws_vpc.test_vpc.id

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

// Passing cloudinit for EC2 instances 

data "cloudinit_config" "server_config" {
  gzip          = true
  base64_encode = true
  part {
    content_type = "text/cloud-config"
    content = templatefile("./server.yml", {
    })
  }
}

// Create a Key-pairs


resource "aws_key_pair" "tf-key-pair" {
key_name = "tf-key-pair"
public_key = tls_private_key.rsa.public_key_openssh
}
resource "tls_private_key" "rsa" {
algorithm = "RSA"
rsa_bits  = 4096
}
resource "local_file" "tf-key" {
content  = tls_private_key.rsa.private_key_pem
filename = "tf-key-pair.pem"
file_permission   = "0400"
}

resource "tls_private_key" "tls_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair_sobral" {
  key_name   = "my_super_key"
  public_key = tls_private_key.tls_key.public_key_openssh
}

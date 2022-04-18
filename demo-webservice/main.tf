resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.key_pair_sobral.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_http.id]
  user_data              = file("./scripts/configure.sh")

  tags = {
    Name      = "Webserver-Meetup-22"
    CreatedBy = "Terraform"
  }
}

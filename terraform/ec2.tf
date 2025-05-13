resource "aws_instance" "web" {
  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type          = "t2.micro"
  iam_instance_profile   = aws_iam_instance_profile.web_profile.name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  tags = {
    Name = "WebBffInstance"
  }
}

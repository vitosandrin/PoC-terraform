resource "aws_iam_role" "web_role" {
  name = "WebBffRole"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {"Service": "ec2.amazonaws.com"},
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "web_profile" {
  name = "WebBffProfile"
  role = aws_iam_role.web_role.name
}

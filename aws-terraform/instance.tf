resource "aws_instance" "redhat" {
  ami = "ami-009b16df9fcaac611"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.main.id
  iam_instance_profile = aws_iam_instance_profile.test_profile.name
  vpc_security_group_ids = [aws_security_group.allow_22.id]

  tags = {
    "Name" = "RedHat"
  }
}
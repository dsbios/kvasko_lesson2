resource "aws_ami_from_instance" "example" {
  name = "RedHat-custom"
  source_instance_id = aws_instance.redhat.id
  }

resource "aws_instance" "redhat-custom" {
  ami = aws_ami_from_instance.example.id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.allow_22.id]

  tags = {
    "Name" = "RedHat Custom"
  }
}
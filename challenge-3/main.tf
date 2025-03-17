resource "aws_instance" "test_instance" {
  for_each      = var.instance_config
  ami           = each.value.ami
  instance_type = each.value.instance_type

  tags = {
    Name = "${each.key}"
  }
}
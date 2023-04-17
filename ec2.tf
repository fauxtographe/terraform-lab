resource "aws_instance" "demo1" {
  ami                    = var.ami-type
  instance_type          = var.instance-type
  vpc_security_group_ids = [data.aws_security_group.gangsta.id]
  key_name               = "caseykey"
  user_data              = file("${path.module}/postgresql.sh")
  tags = {
    "Name" = var.instance-name
    "env"  = var.env
    "Team" = var.team
  }
}
resource "aws_instance" "linux_windows" {
  for_each                    = local.linux_windows
  ami                         = each.value.ami
  instance_type               = each.value.instance_type
  get_password_data           = each.value.get_password
  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = [aws_security_group.allow_ssh_rdp.id]
  key_name                    = "linux_windows"
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.linux_windows.name
  user_data                   = each.value.user_data
  tags = {
    Name = each.key
  }
}
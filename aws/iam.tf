resource "aws_iam_instance_profile" "linux_windows" {
  name = "ec2_profile"
  role = aws_iam_role.linux_windows.name
}
resource "aws_iam_role" "linux_windows" {
  name               = "ssm-role"
  description        = "The role for SSM connection"
  assume_role_policy = <<EOF
{
"Version": "2012-10-17",
"Statement": {
"Effect": "Allow",
"Principal": {"Service": "ec2.amazonaws.com"},
"Action": "sts:AssumeRole"
}
}
EOF
}
resource "aws_iam_role_policy_attachment" "linux_windows" {
  role       = aws_iam_role.linux_windows.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
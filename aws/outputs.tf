output "linux_public_dns" {
  description = "Public DNS name of Linux Instance"
  value       = aws_instance.linux_windows["vm-nebo-linux"].public_dns
}

output "windows_public_dns" {
  description = "Public DNS name of Windows Instance"
  value       = aws_instance.linux_windows["vm-nebo-windows"].public_dns
}

output "windows_password" {
  description = "Administrator password for Windows instance"
  value       = rsadecrypt(aws_instance.linux_windows["vm-nebo-windows"].password_data,file("linux_windows.pem"))
}
output "linux_instance_name" {
  description = "Name of Linux Instance"
  value = google_compute_instance.linux_windows["vm-nebo-linux"].name
}

output "windows_instance_name" {
  description = "Name of Windows Instance"
  value = google_compute_instance.linux_windows["vm-nebo-windows"].name
}
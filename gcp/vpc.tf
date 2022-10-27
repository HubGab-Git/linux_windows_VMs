# create VPC
resource "google_compute_network" "vpc" {
  name                    = "linux-windows-vpc"
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
}
# create public subnet
resource "google_compute_subnetwork" "network_subnet" {
  name          = "linux-windows-subnet"
  ip_cidr_range = var.vpc_cidr
  network       = google_compute_network.vpc.name
  region        = var.region
}

# allow rdp
resource "google_compute_firewall" "allow-ssh-rdp" {
  name    = "allow-ssh-rdp"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["22","3389"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["ssh-rdp"]
}
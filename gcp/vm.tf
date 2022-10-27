resource "google_compute_instance" "linux_windows" {
  for_each     = local.linux_windows
  name         = each.key
  machine_type = each.value.instance_type
    tags         = ["ssh-rdp"]
  boot_disk {
    initialize_params {
      size  = 50
      type  = "pd-standard"
      image = each.value.image
    }
  }

  network_interface {
    network       = google_compute_network.vpc.name
    subnetwork    = google_compute_subnetwork.network_subnet.name

    access_config {
      network_tier = "STANDARD"
    }
  }
}
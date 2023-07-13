resource "google_compute_instance" "public_instance" {
  name         = "${var.name}-pub-${count.index}"
  machine_type = var.machine_type
  zone         = var.zone
  count        = var.public_instance_count
  tags         = ["web", "dev"]
  boot_disk {
    initialize_params {
      image = var.image_family
    }
  }
  network_interface {
    subnetwork = var.public_subnet_id
    access_config {}
  }
}

resource "google_compute_instance" "private_instance" {
  name         = "${var.name}-pvt-${count.index}"
  machine_type = var.machine_type
  zone         = var.zone
  count        = var.private_instance_count
  tags         = ["web", "dev"]
  boot_disk {
    initialize_params {
      image = var.image_family
    }
  }
  network_interface {
    subnetwork = var.private_subnet_id
    access_config {}
  }
}
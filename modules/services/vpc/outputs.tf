output "vpc_id" {
  value = google_compute_network.vpc_network.id
}

output "private_subnet_id" {
  value = google_compute_subnetwork.private_subnet.self_link
}

output "public_subnet_id" {
  value = google_compute_subnetwork.public_subnet.self_link
}
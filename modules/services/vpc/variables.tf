variable "vpc_network" {
  default = "google_compute_network.vpc_network.self_link"
}

variable "region" {
  default = "us-east1"
}

variable "private_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "public_subnet_cidr" {
  default = "10.0.2.0/24"
}




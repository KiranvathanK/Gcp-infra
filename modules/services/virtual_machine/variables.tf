variable "image_family" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "public_subnet_id" {}

variable "private_subnet_id" {}

variable "zone" {
  type = string
}

variable "name" {
  type    = string
}

variable "private_instance_count" {
  type = number
}

variable "public_instance_count" {
  type = number
}
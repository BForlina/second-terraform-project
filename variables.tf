variable "aws_region" {
  default = "us-east-2"
  type    = string
}

variable "vpc_name" {
  default = "default"
  type    = string
}

variable "availability_zone-1" {
  default = "us-east-2a"
  type    = string
}

variable "availability_zone-2" {
  default = "us-east-2b"
  type    = string
}

variable "auto-assign-ip" {
  default = "true"
  type    = bool
}

variable "pub-sub1-name" {
  default = "Public Subnet 1"
  type    = string
}

variable "pub-sub2-name" {
  default = "Public Subnet 2"
  type    = string
}

variable "priv-sub1-name" {
  default = "Private Subnet 1"
  type    = string
}

variable "priv-sub2-name" {
  default = "Private Subnet 2"
  type    = string
}

variable "igw-name" {
  default = "Internet Gateway"
  type    = string
}

variable "nat-gw-name" {
  default = "Nat Gateway"
  type    = string
}
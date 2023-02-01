variable "prefix" {
  type    = string
  default = "tcs"
}

variable "provider_cloud" {
  type    = string
  default = "openstack"
}

variable "public_network" {
  type    = string
  default = "external"
}

variable "image" {
  type    = string
  default = "Ubuntu 22.04"
}

variable "flavor" {
  type    = string
  default = "SCS-1V:4:10"
}

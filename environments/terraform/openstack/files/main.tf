terraform {
  required_version = ">= 1.2.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "= 2.2.3"
    }

    null = {
      source = "hashicorp/null"
      version = "=3.2.1"
    }

    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "=1.49.0"
    }
  }
}

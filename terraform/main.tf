# - main -
provider "openstack" {
  cloud = var.cloud_provider
}

terraform {
  required_version = "< 1.6.3"

  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.43.0"
    }
    local = {
      source = "hashicorp/local"
    }
  }
}

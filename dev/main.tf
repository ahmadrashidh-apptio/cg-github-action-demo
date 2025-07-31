terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
  }
}
provider "local" {
  # Configuration options
}

data "local_file" "readme" {
  filename = "${path.module}/../README.md"
}

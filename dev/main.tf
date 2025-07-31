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
  # changes changes
}

resource "local_file" "trigger_change" {
  content  = "Trigger at ${timestamp()}"
  filename = "${path.module}/../trigger.txt"
}

data "local_file" "readme" {
  filename = "${path.module}/../README.md"
}

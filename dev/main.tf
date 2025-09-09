terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

variable "trigger_flag" {
  type    = bool
  default = false
}

provider "local" {
  # Configuration options
  # changes changes
}

resource "null_resource" "toggle_trigger" {
  triggers = {
    timestamp = timestamp() # This changes every run
  }

  provisioner "local-exec" {
    command = "echo Triggered at ${timestamp()}"
  }
}

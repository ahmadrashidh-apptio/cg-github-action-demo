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
    flag = var.trigger_flag
  }

  provisioner "local-exec" {
    command = "echo Trigger flag is ${var.trigger_flag}"
  }
}

data "local_file" "readme" {
  filename = "${path.module}/../README.md"
}

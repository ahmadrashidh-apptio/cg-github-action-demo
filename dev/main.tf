terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "default"
}

resource "aws_efs_file_system" "efs_example" {

  throughput_mode                 = "provisioned"
  provisioned_throughput_in_mibps = 4
  availability_zone_name = "us-east-1"


}

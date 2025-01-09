terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "local_file" "pet" {
  filename = "pets.txt"
  content  = "This is my pets"
}

resource "random_pet" "my-pet" {
  prefix    = "Mr"
  separator = "."
  length    = 1
}
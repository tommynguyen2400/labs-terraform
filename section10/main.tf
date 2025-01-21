provider "aws" {
  region = "ap-southeast-1"
}

# resource "local_file" "pet" {
#   filename = "pet.txt"
#   content  = "Hello cat"
# }

variable "ami" {
  type = string
  default = "ami-a,ami-b"
  description = "AMI for machine"
}
# data source
# data "aws_instance" "instance_web1" {
#   ami = "ami-0e48a8a6b7dc1d30b"
# }

# resource "aws_instance" "web1" {
#   ami           = data.aws_instance.instance_web1.ami
#   instance_type = "t2.micro"
#   tags = {
#     Name = "test"
#   }
# }

# meta argument

# count
# resource "local_file" "pet" {
#   filename = var.filename[count.index]
#   content  = "hello terraform"
#   count    = length(var.filename)
# }

# output "pets" {
#   value = local_file.pet
# }


# for-each
resource "local_file" "pet" {
  filename = each.value
  for_each = toset(var.filename1)
  content  = "foo!"
  file_permission = "0777"
  
}

output "pet" {
  value     = local_file.pet
  sensitive = true
}


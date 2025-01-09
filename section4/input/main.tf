resource "local_file" "pet" {
  filename = var.filename
  content  = var.content1["statement1"]
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix[2]
  separator = var.separator
  length    = 1
}
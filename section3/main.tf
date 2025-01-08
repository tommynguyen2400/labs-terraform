resource "local_file" "pet" {
  filename = "pets.txt"
  content = "Hello cats!!"
}
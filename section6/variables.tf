variable "filename" {
  default = [
    "cat.txt",
    "dog.txt",
    "pig.txt"
  ]
}

variable "filename1" {
  type = list(string)
  default = [
    "Viet.txt",
    "Nguyen.txt",
    "Hoang.txt"
  ]
}
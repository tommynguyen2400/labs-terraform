variable "filename" {
  description = "File name"
  default     = "pets.txt"
}

variable "content" {
  description = "description my pet"
  default     = "This is my pet"
}

variable "prefix" {
  description = "Prefix my pet"
  default     = ["Mr", "Ms", "Sir"]
  type        = list(any)
}

variable "separator" {
  default = "."
}

variable "content1" {
  type = map
  default = {
    "statement1" = "1"
    "statement2" = "2"
  }
}
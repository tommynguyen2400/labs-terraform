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
  type = map(any)
  default = {
    "statement1" = "1"
    "statement2" = "2"
  }
}

# type map
variable "subject" {
  type = map
  default = {
    sub1 = "math"
    sub2 = "technology"
  }
}


# type object
variable "tom" {
  type = object({
    name         = string
    color        = string
    age          = string
    food         = list(string)
    favorite_pet = bool
  })

  default = {
    name         = "Tom"
    color        = "blue"
    age          = "24"
    food         = ["mouse", "fruit"]
    favorite_pet = true
  }
}

# type tuple
variable "jerry" {
  type    = tuple([string, number, bool])
  default = ["value", 0, false]
}
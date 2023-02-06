variable "region" {
  default = "us-east-1"
}

variable "profile" {
    description = "AWS credentials profile you want to use"
}

variable "number_of_public_subnets" {
  default = 2
}

variable "number_of_private_subnets" {
  default = 2
}

variable "test" {
  type = string
}

variable "ami_id" {
  type        = string
  description = "The ID of the AMI to run"
}

variable "name" {
  description = "The base name for the instance and all other resources"
  type        = string
}

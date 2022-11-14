variable "vpc_id" {
  description = "vpc id"
  type        = string
}

variable "key_name" {
  description = "key name for ec2 instance"
  type        = string
}

variable "ami_id" {
  description = "instance ami id"
  type        = string
}

variable "instance_type" {
  description = "instance type"
  type        = string
}

variable "public_subnet" {
  description = "public subnet"
  type        = string
}

variable "volume_type" {
  description = "instance volume type"
  type        = string
}

variable "volume_size" {
  description = "instance voulume size"
  type        = string
}

variable "encrypted" {
  description = "encryption for instance"
  type        = string
}
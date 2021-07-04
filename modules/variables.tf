

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "availability-zone" {
  type = string
}

variable "key-name" {
  type    = string
  default = "training_kp"
}

variable "environment" {
  type    = string
  default = "env"
}

variable "role" {
  type = string
}

variable "purpose" {
  type = string
}

variable "index" {
  type = string
}

variable "inboundport" {
  type = string
}

variable "bootstrap-file-name" {
  type = string
}

variable "machine-ami" {
  type = string
}


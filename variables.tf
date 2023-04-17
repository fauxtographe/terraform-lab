variable "ami-type" {
  description = "ami info"
  type        = string
  default     = "ami-069aabeee6f53e7bf"
}

variable "instance-type" {
  default = "t2.micro"
}

variable "env" {
  default = "dev"
}

variable "instance-name" {
  default = "Postgresql-server-dev"
}

variable "team" {
  default = "Dev team"
}
# Define the variables that will be initialised in etc/{env,versions}_<region>_<environment>.tfvars...
variable "aws_account_id" {
  type = "string"
}

variable "environment" {
  type = "string"
}

variable "region" {
  type = "string"
}

variable "project" {
  type = "string"
}
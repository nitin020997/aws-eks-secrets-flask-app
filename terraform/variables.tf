variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "secret_name" {
  description = "Name of the secret"
    type        = string
    default = "myapp/db-creds"
}
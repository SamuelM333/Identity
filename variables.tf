variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "principal" {
  type        = string
  description = "ARN of the principal account"
}

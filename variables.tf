variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project Name to be use to name resources"
}

variable "region" {
  type        = string
  description = "Region to aws"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to all AWS resources"
}
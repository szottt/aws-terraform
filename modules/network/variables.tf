variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project-name" {
  type        = string
  description = "Project Name to be use to name resources"
}
variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS Resources"
}
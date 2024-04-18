
variable "project-name" {
  type        = string
  description = "Project Name to be use to name resources"
}
variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS Resources"
}

variable "public-subnet-1a" {
  type        = string
  description = "Subnet to create eks cluster AZ 1a"
}

variable "public-subnet-1b" {
  type        = string
  description = "Subnet to create eks cluster AZ 1b"
}
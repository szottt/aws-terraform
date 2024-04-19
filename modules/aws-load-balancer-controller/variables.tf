variable "project-name" {
  type        = string
  description = "Project name to be used to name the resources (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}

variable "oidc" {
  type        = string
  description = "HTTPS URL from OIDC provider to EKS Cluster"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}
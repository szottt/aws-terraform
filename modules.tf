module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project-name = var.project-name
  tags         = local.tags
}
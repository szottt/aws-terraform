module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project-name = var.project-name
  tags         = local.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project-name     = var.project-name
  tags             = local.tags
  public-subnet-1a = module.eks_network.subnet-pub-1a
  public-subnet-1b = module.eks_network.subnet-pub-1b
}
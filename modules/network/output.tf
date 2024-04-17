output "subnet-pub-1a" {
  value = aws_subnet.eks_subnet_public_1a.id
}
output "subnet-pub-1b" {
  value = aws_subnet.eks_subnet_public_1b.id
}

output "subnet-privat-1a" {
  value = aws_subnet.eks_subnet_private_1a.id
}

output "subnet-privat-1b" {
  value = aws_subnet.eks_subnet_private_1b.id
}
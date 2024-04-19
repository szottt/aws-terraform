resource "aws_iam_policy" "eks_controller_policy" {
  name   = "${var.project-name}-aws-load-balancer-controller"
  policy = file("${path.module}/iam_policy.json")
  tags   = var.tags
}
resource "aws_iam_policy" "eks-controller-policy" {
  name        = "${var.project-name}-aws-load-balancer-controller"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = file("${path.module}/iam_policy.json")
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-policy"
    }
  )
}
}
module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 20.0"

    cluster_name    = var.cluster_name
    cluster_version = "1.29"

    subnet_ids = module.vpc.private_subnets
    vpc_id     = module.vpc.vpc_id

    cluster_endpoint_public_access = true

    # Liens vers les rôles IAM définis dans iam.tf
    create_iam_role = false
    iam_role_arn    = aws_iam_role.eks_cluster_role.arn

    eks_managed_node_groups = {
        default = {
            desired_size = 1
            max_size     = 2
            min_size     = 1

            instance_types = ["t3.micro"] # gratuite dans le Free Tier
            capacity_type  = "ON_DEMAND"

            iam_role_arn = aws_iam_role.eks_node_role.arn
            }
        }

    tags = {
        Project     = var.project_name
        Environment = var.environment
    }
}

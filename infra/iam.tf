# Rôle IAM pour le cluster EKS
resource "aws_iam_role" "eks_cluster_role" {
    name = "${var.project_name}-eks-cluster-role"

    assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
        Effect = "Allow"
        Principal = {
        Service = "eks.amazonaws.com"
        }
        Action = "sts:AssumeRole"
    }]
    })
}

resource "aws_iam_role_policy_attachment" "eks_cluster_AmazonEKSClusterPolicy" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
    role       = aws_iam_role.eks_cluster_role.name
}

# Rôle IAM pour les nœuds EC2 (Node Group)
resource "aws_iam_role" "eks_node_role" {
    name = "${var.project_name}-eks-node-role"

    assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
        Effect = "Allow"
        Principal = {
        Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
        }]
    })
}

resource "aws_iam_role_policy_attachment" "node_AmazonEKSWorkerNodePolicy" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    role       = aws_iam_role.eks_node_role.name
}

resource "aws_iam_role_policy_attachment" "node_AmazonEKS_CNI_Policy" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    role       = aws_iam_role.eks_node_role.name
}

resource "aws_iam_role_policy_attachment" "node_ECRReadOnly" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    role       = aws_iam_role.eks_node_role.name
}

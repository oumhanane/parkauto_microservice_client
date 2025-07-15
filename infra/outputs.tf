output "region" {
    description = "Région AWS utilisée"
    value       = var.region
}

output "vpc_id" {
    description = "ID du VPC principal"
    value       = module.vpc.vpc_id
}

output "public_subnets" {
    description = "Liste des subnets publics"
    value       = module.vpc.public_subnets
}

output "private_subnets" {
    description = "Liste des subnets privés"
    value       = module.vpc.private_subnets
}

output "cluster_name" {
    description = "Nom du cluster EKS"
    value       = var.cluster_name
}

output "cluster_endpoint" {
    description = "Endpoint API du cluster EKS"
    value       = module.eks.cluster_endpoint
}

output "cluster_arn" {
    description = "ARN du cluster EKS"
    value       = module.eks.cluster_arn
}

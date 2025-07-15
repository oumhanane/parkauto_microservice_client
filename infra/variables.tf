variable "region" {
    description = "Région AWS"
    type        = string
    default     = "eu-west-3"
}

variable "project_name" {
    description = "Nom du projet"
    type        = string
    default     = "Parkauto"
}

variable "environment" {
    description = "Environnement (dev, staging, prod)"
    type        = string
    default     = "dev"
}

variable "vpc_cidr" {
    description = "CIDR du VPC principal"
    type        = string
    default     = "10.0.0.0/16"
}

variable "public_subnets" {
    description = "Liste des subnets publics"
    type        = list(string)
    default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
    description = "Liste des subnets privés"
    type        = list(string)
    default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "azs" {
    description = "Zones de disponibilité"
    type        = list(string)
    default     = ["eu-west-3a", "eu-west-3b"]
}

variable "cluster_name" {
    description = "Nom du cluster EKS"
    type        = string
    default     = "parkauto-cluster"
}

variable "ec2_key_name" {
    description = "Nom de la paire de clés SSH"
    type        = string
    default     = "parkauto-key"
}

variable "bastion_allowed_cidr" {
    description = "Plage IP autorisée pour SSH"
    type        = string
    default     = "0.0.0.0/0" # à restreindre à ton IP pour plus de sécurité
}

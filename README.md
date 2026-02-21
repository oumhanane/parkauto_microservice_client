# ParkAuto – Client Service

## 🚀 Description

Microservice **ClientService** du projet ParkAuto, gérant les opérations liées aux clients (CRUD, gestion des informations, interactions avec les autres microservices).

---

## 🛠 Environnement de Test et CI/CD

**FR 🇫🇷**

- **Infrastructure locale** : Mise en place d’un environnement avec Docker et Minikube pour la construction, le déploiement et le testing des microservices ParkAuto.
- **GitHub Actions Runner auto-hébergé** : Runner local configuré pour exécuter les workflows CI/CD.
- **Registre Docker privé non sécurisé** : Stockage des images pour le pipeline et Minikube.
- **Pipeline CI/CD** :
  - Compilation et tests unitaires des microservices.
  - Build des images Docker.
  - Scans de sécurité intégrés : Trivy pour les vulnérabilités conteneur, OWASP Dependency-Check et SpotBugs/FindSecurityBugs pour le code et dépendances.
  - Déploiement automatisé sur Minikube pour tests fonctionnels.
- **Supervision locale** : Intégration de Prometheus et Grafana pour la collecte des métriques et la visualisation de l’état des services.
- **Sécurité DevSecOps** : SAST/SCA intégrés pour garantir la sécurité du code et des dépendances avant déploiement.

**Objectif** : fournir un environnement complet, reproductible et sécurisé pour valider les microservices avant déploiement sur EKS.

**EN 🇬🇧**

- **Local Environment**: Setup with Docker and Minikube for building, deploying, and testing ParkAuto microservices.
- **Self-hosted GitHub Actions Runner**: Configured to run CI/CD workflows locally.
- **Unsecured Local Docker Registry**: Storage of Docker images for the pipeline and Minikube.
- **CI/CD Pipeline**:
  - Build and unit tests for microservices.
  - Docker image builds.
  - Integrated security scans: Trivy for container vulnerabilities, OWASP Dependency-Check, and SpotBugs/FindSecurityBugs for code and dependencies.
  - Automated deployment to Minikube for functional testing.
- **Local Monitoring**: Prometheus and Grafana for metrics collection and service visualization.
- **DevSecOps Security**: SAST/SCA integrated to ensure code and dependency security before deployment.

**Objective**: provide a complete, reproducible, and secure environment to validate microservices before deploying to EKS.

---

## ☁️ Infrastructure AWS avec Terraform et cluster EKS

**FR 🇫🇷**

- **Infrastructure sécurisée** : VPC avec subnets publics et privés, NAT gateway pour l’accès internet des ressources privées.
- **Cluster Kubernetes managé (EKS)** : Cluster EKS avec Node Group auto-scalable pour héberger les pods des microservices.
- **Rôles IAM** : Gestion des rôles pour le cluster et les nœuds EC2 avec politiques nécessaires au fonctionnement, communication réseau et accès aux images Docker.
- **Instance Bastion** : Accès SSH sécurisé aux ressources privées et au cluster, avec **user_data.sh** automatisant l’installation des outils (Docker, Git, AWS CLI), création d’utilisateur dédié et tâches cron.
- **Structuration du code Terraform** : Modules séparés (main.tf, eks.tf, ec2.tf, iam.tf, variables.tf, outputs.tf) pour lisibilité et maintenance.

**Objectif** : infrastructure AWS prête pour le déploiement des microservices ParkAuto sur le cluster EKS.

**EN 🇬🇧**

- **Secure Infrastructure**: VPC with public and private subnets, NAT gateway for internet access from private resources.
- **Managed Kubernetes Cluster (EKS)**: EKS cluster with auto-scaling Node Group to host microservices pods.
- **IAM Roles**: Roles management for cluster and EC2 nodes, with policies for cluster operation, network communication, and Docker image access.
- **Bastion Host**: Secure SSH access to private resources and cluster, with **user_data.sh** automating tool installation (Docker, Git, AWS CLI), dedicated user creation, and cron tasks.
- **Terraform Code Structure**: Separate modules (main.tf, eks.tf, ec2.tf, iam.tf, variables.tf, outputs.tf) for clarity, maintainability, and modularity.

**Objective**: AWS infrastructure ready to deploy ParkAuto microservices on the managed Kubernetes cluster (EKS).

---

## 📌 Objectifs clés

- Créer un environnement **local et cloud** complet pour le développement, tests, sécurité et déploiement.
- Garantir un pipeline **CI/CD sécurisé et reproductible** pour tous les microservices.
- Déployer les microservices sur **Minikube pour validation** et sur **EKS pour production**.
- Assurer une **supervision complète** avec Prometheus et Grafana.
- Structurer le code Terraform pour une **maintenance et évolutivité faciles**.

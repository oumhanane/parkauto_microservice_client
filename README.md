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
- **DevSecOps S**

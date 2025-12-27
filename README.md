# ParkAuto - Microservice ClientService

Ce dépôt contient le microservice **ClientService** de l'application ParkAuto, utilisé dans le cadre d’un TP Administrateur Système DevOps. Il a été intégré dans un workflow DevOps complet avec conteneurisation, CI/CD, et déploiement Kubernetes.

---

## Description

Le microservice **ClientService** fournit une **API REST** pour la gestion des informations clients. Cette API est consommée par les autres microservices de l’application (GatewayService, LocationService, VehicleService) et est exposée dans un environnement local Kubernetes via un Service et un Ingress.

### Fonctionnalités principales

- Gestion des clients (CRUD) via des endpoints REST.
- Communication avec les autres microservices dans le cluster.
- Utilisation de **Spring Boot** pour le backend.
- Format des données échangées : **JSON**.

---

## Prérequis

Avant de commencer, assurez-vous d’avoir installé sur votre machine :

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Minikube](https://minikube.sigs.k8s.io/docs/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Helm](https://helm.sh/docs/intro/install/)
- [Git](https://git-scm.com/)

---

## Installation et déploiement local

1. **Cloner le dépôt :**

```bash
git clone https://github.com/oumhanane/parkauto_microservice_client.git
cd parkauto_microservice_client

Construction des images Docker :

docker compose build


Démarrage de l’environnement Docker Compose :

docker compose up -d


Vérifier que les conteneurs tournent :

docker ps


Accès à l’application :
L’API REST est accessible via le microservice ClientService sur le port 8081.
Exemple : http://localhost:8081/clients

Déploiement Kubernetes (Minikube)

Démarrer Minikube avec le registre local :

minikube start --insecure-registry="registry.dev.svc.cluster.local:5000"


Déployer le microservice sur le cluster :

kubectl apply -f k8s-specs/


Vérifier les pods et services :

kubectl get pods
kubectl get svc


Accéder au service via Ingress :
Redirigez gateway.local vers 127.0.0.1 dans /etc/hosts et utilisez :

minikube tunnel


Puis accéder à l’API via http://gateway.local.

Pipeline CI/CD avec GitHub Actions

Le pipeline automatisé permet :

Compilation et tests unitaires avec Maven.

Analyse de sécurité des dépendances (SCA) via OWASP Dependency-Check.

Analyse statique du code (SAST) avec SpotBugs et FindSecurityBugs.

Build des images Docker.

Scan de sécurité des images avec Trivy.

Push des images vers le registre Docker local.

Déploiement automatisé sur Minikube.

Supervision

Pour la surveillance du microservice et du cluster Kubernetes :

Prometheus collecte les métriques.

Grafana permet la visualisation via dashboards.

L’API expose des métriques Spring Boot Actuator pour Prometheus.

Accès aux dashboards :

Prometheus : http://localhost:9090

Grafana : http://localhost:3000
Identifiants : admin / prom-operator

Notes

Le microservice a été intégré dans le projet ParkAuto à des fins pédagogiques pour le TP DevOps.

L’objectif principal est de démontrer la mise en place d’un workflow DevOps complet, incluant conteneurisation, CI/CD, Kubernetes et supervision.

Licence

Ce projet est utilisé uniquement dans le cadre du TP Administrateur Système DevOps et n’est pas destiné à un usage commercial.


ParkAuto – ClientService Microservice

This repository contains the ClientService microservice of the ParkAuto application, used as part of a DevOps System Administrator training project.
It has been integrated into a complete DevOps workflow, including containerization, CI/CD, and Kubernetes deployment.

Description

The ClientService microservice provides a REST API for managing client information.
This API is consumed by other microservices in the application (GatewayService, LocationService, VehicleService) and is exposed in a local Kubernetes environment through a Service and an Ingress.

Key Features

Client management (CRUD) via REST endpoints

Communication with other microservices within the cluster

Backend implemented using Spring Boot

Data exchange format: JSON

Prerequisites

Before getting started, make sure the following tools are installed on your machine:

Docker

Docker Compose

Minikube

kubectl

Helm

Git

Local Installation and Deployment
Clone the Repository
git clone https://github.com/oumhanane/parkauto_microservice_client.git
cd parkauto_microservice_client

Build Docker Images
docker compose build

Start the Docker Compose Environment
docker compose up -d

Check Running Containers
docker ps

Access the Application

The REST API is exposed by the ClientService microservice on port 8081.
Example:

http://localhost:8081/clients

Kubernetes Deployment (Minikube)
Start Minikube with a Local Registry
minikube start --insecure-registry="registry.dev.svc.cluster.local:5000"

Deploy the Microservice to the Cluster
kubectl apply -f k8s-specs/

Check Pods and Services
kubectl get pods
kubectl get svc

Access the Service via Ingress

Map gateway.local to 127.0.0.1 in the /etc/hosts file and run:

minikube tunnel


Then access the API at:

http://gateway.local

CI/CD Pipeline with GitHub Actions

The automated CI/CD pipeline performs the following steps:

Compilation and unit testing using Maven

Dependency security analysis (SCA) with OWASP Dependency-Check

Static code analysis (SAST) using SpotBugs and FindSecurityBugs

Docker image build

Container image security scanning with Trivy

Pushing images to a local Docker registry

Automated deployment to Minikube

Monitoring

To monitor the microservice and the Kubernetes cluster:

Prometheus collects metrics

Grafana provides visualization through dashboards

The API exposes metrics via Spring Boot Actuator for Prometheus

Dashboard Access

Prometheus:

http://localhost:9090


Grafana:

http://localhost:3000


Credentials: admin / prom-operator

Notes

The microservice was integrated into the ParkAuto project for educational purposes as part of the DevOps training project.
The main objective is to demonstrate the implementation of a complete DevOps workflow, including containerization, CI/CD, Kubernetes deployment, and monitoring.

License

This project is used exclusively for the DevOps System Administrator training project and is not intended for commercial use.
# Golang Microservice with CI/CD and Kubernetes

This repository showcases a simple Golang microservice deployed to Kubernetes with a CI/CD pipeline using GitHub Actions.

---

## Table of Contents

- [Golang Microservice with CI/CD and Kubernetes](#golang-microservice-with-cicd-and-kubernetes)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Features](#features)
  - [Prerequisites](#prerequisites)
  - [Getting Started](#getting-started)
  - [Clone the Repository](#clone-the-repository)

---

## Introduction

This project demonstrates how to build, test, and deploy a Golang microservice using:
- Docker for containerization.
- Kubernetes for orchestration.
- GitHub Actions for CI/CD automation.

The microservice serves a "Hello, World!" response at the root endpoint.

---

## Features

- Lightweight Golang HTTP server.
- Dockerized application for portability.
- Kubernetes manifests for deployment.
- GitHub Actions pipeline for CI/CD.
- Configurable and scalable infrastructure.

---

## Prerequisites

To work with this project, ensure you have the following installed:
- [Go](https://golang.org/dl/) (1.21 or later)
- [Docker](https://www.docker.com/)
- [Kubernetes CLI (kubectl)](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- A local Kubernetes cluster ([Minikube](https://minikube.sigs.k8s.io/docs/start/), [Kind](https://kind.sigs.k8s.io/), etc.)
- A GitHub account for repository management and Actions.

---

## Getting Started

### Clone the Repository
```bash
git clone https://github.com/pauluswi/kiel.git
cd kiel
```

### Build and Run Locally
```bash
go build -o app .
./app
```
Access the application at http://localhost:8080.

## Project Structure
```plaintext
golang-microservice/
├── .github/
│   └── workflows/
│       └── ci-cd.yaml       # GitHub Actions pipeline configuration
├── k8s/
│   ├── deployment.yaml      # Kubernetes Deployment manifest
│   └── service.yaml         # Kubernetes Service manifest
├── main.go                  # Golang HTTP server code
├── Dockerfile               # Docker image build configuration
├── go.mod                   # Go module dependency file
├── go.sum                   # Dependency checksum file
└── README.md                # Project documentation
```

## CI/CD Workflow
The CI/CD pipeline is implemented using GitHub Actions and performs the following steps:

Checkout Code: Fetch the latest code from the repository.
1. Build and Test: Compile the Golang application and run unit tests.
2. Dockerize: Build and push the Docker image to a container registry (e.g., Docker Hub).
3. Deploy to Kubernetes: Apply Kubernetes manifests to deploy or update the application.

The pipeline is defined in .github/workflows/ci-cd.yaml.

## Kubernetes Deployment
### Deploy to Kubernetes

1. Ensure your Kubernetes cluster is running:
```bash
minikube start  # Or your preferred local Kubernetes setup
```

2. Apply the Kubernetes manifests:
```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

3. Verify the Deployment:
```bash
kubectl get pods
kubectl get services
```

4. Access the Service:

If using Minikube, expose the service:
```bash
minikube service golang-microservice
```


## Contributing
Contributions are welcome! If you have suggestions, improvements, or bug fixes, please:
1. Fork the repository.
2. Create a feature branch.
3. Submit a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
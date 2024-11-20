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

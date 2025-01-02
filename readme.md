
# Kubernetes Deployment for Flask Hello Docker Application

This repository contains Kubernetes configuration files for deploying a Flask Hello Docker application.

## Configuration Files

### 1. deployment.yaml
This file defines the Deployment configuration for the Flask application:

- **Application Name**: flask-hello-docker
- **Replicas**: 3 instances
- **Container Image**: mamun3110/flask-hello-docker:latest
- **Container Port**: 8080
- **Resource Limits**:
  - CPU: 250m (max)
  - Memory: 256Mi (max)
- **Resource Requests**:
  - CPU: 100m
  - Memory: 128Mi

### 2. service.yaml
This file defines the Service configuration to expose the application:

- **Service Name**: flask-hello-docker
- **Service Type**: LoadBalancer
- **Port Mapping**:
  - Service Port: 80
  - Target Port: 8080
  - Node Port: 30001
- **Protocol**: TCP

## Deployment Instructions

1. Apply the deployment:
   ```bash
   # Apply the deployment configuration
   kubectl apply -f deployment.yaml
   
   # Verify the deployment status
   kubectl get deployments
   kubectl get pods
   ```


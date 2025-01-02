# Database Configuration Files

This directory contains configuration files for setting up PostgreSQL database in Kubernetes.

## Configuration Files

### 1. postgres-configmap.yaml
This file defines the ConfigMap for PostgreSQL database configuration:

- **ConfigMap Name**: postgres-secret
- **Labels**: app: postgres
- **Environment Variables**:
  - POSTGRES_DB: 'ps_db'
  - POSTGRES_USER: 'ps_user' 
  - POSTGRES_PASSWORD: 'SecurePassword'

### 2. postgres-deployment.yaml
This file defines the Deployment configuration for PostgreSQL:

- **Application Name**: postgres
- **Container Image**: postgres:latest
- **Environment Variables**: Loaded from postgres-configmap
- **Volume Mounts**: Persistent volume for data storage
- **Port**: 5432

### 3. postgres-service.yaml  
This file defines the Service to expose PostgreSQL:

- **Service Name**: postgres
- **Service Type**: ClusterIP
- **Port**: 5432
- **Target Port**: 5432

### 4. postgres-storage.yaml
This file defines persistent storage for PostgreSQL:

- **Storage Class Name**: standard
- **Access Mode**: ReadWriteOnce
- **Storage Size**: 2Gi

## Usage Instructions

1. Create the ConfigMap:
   ```bash
   kubectl apply -f postgres-configmap.yaml
   ```

2. Create the persistent volume:
   ```bash
   kubectl apply -f postgres-storage.yaml
   ```

3. Deploy PostgreSQL:
   ```bash
   kubectl apply -f postgres-deployment.yaml
   ```

4. Create the service:
   ```bash
   kubectl apply -f postgres-service.yaml
   ```

5. Verify the deployment:
   ```bash
   kubectl get pods
   kubectl get services
   kubectl get pv,pvc
   ```

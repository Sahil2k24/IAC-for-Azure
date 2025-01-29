
```markdown
# Polystox Infrastructure on Azure  

This repository contains Terraform configurations for managing infrastructure on **Microsoft Azure** using best practices.  

## Infrastructure Best Practices  

- **Pipeline-Driven Deployment:** Infrastructure is created and managed through a CI/CD pipeline, ensuring automation and consistency.  
- **No Local tfvars File:** Sensitive and environment-specific values are passed as pipeline variables, eliminating the need for a `terraform.tfvars` file.  
- **State Management:** The Terraform state (`tfstate`) file is stored securely in an **Azure Storage Account** instead of a local machine, ensuring collaboration and preventing loss.  
- **State Locking:** To avoid conflicts in concurrent executions, **state locking** is enabled using Azure Storage.  

## Services Provisioned  

This Terraform setup provisions the following key services:  

- **Azure Kubernetes Service (AKS):** Manages containerized applications with scalability.  
- **Virtual Network (VNet) & Subnets:** Provides a secure and isolated network infrastructure.  
- **Azure Container Registry (ACR):** Stores and manages container images.  
- **Azure API Management (APIM):** Controls and secures API access.  
- **Azure PostgreSQL Flexible Server:** Manages databases with high availability.  
- **Azure Storage Account:** Stores Terraform state and supports various storage needs.  

## Directory Structure  

```
## Directory Structure

/polystox-infrastructure
├── main.tf
├── terraform.tfvars
├── variables.tf
├── providers.tf
└── modules/
    ├── kubernetes_cluster/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── output.tf
    ├── resource_group/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── output.tf
    ├── subnet/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── output.tf
    ├── virtual_network/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── output.tf
    ├── acr/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── output.tf
    ├── postgresql_db/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── output.tf
    ├── storage_account/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── output.tf
    ├── apim/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── output.tf

```

## Terraform Commands  

1. **Initialize Terraform**  

   ```bash
   terraform init
   ```

2. **Plan the Infrastructure Changes**  

   ```bash
   terraform plan
   ```

3. **Apply Configuration**  

   ```bash
   terraform apply -auto-approve
   ```

4. **Destroy the Infrastructure**  

   ```bash
   terraform destroy -auto-approve
   ```

---

This setup ensures a **scalable, secure, and fully automated** Azure infrastructure following **industry best practices**. 🚀  
```  

This version clearly explains the **Azure-focused** approach, Terraform best practices, pipeline automation, and state management while keeping it concise. Let me know if you need any further refinements! 🚀

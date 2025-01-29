
![image](https://github.com/user-attachments/assets/8c585ab5-62b2-4b28-b563-1105a723e318)


```markdown
# Polystox Infrastructure

This repository contains Terraform configurations for managing infrastructure across multiple environments.

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

## Setup and Commands

1. **Initialize Terraform**:

   To initialize Terraform and download the required providers:

   ```bash
   terraform init
   ```

2. **Apply Configuration** (for specific environment):

   Navigate to the desired environment directory and apply the configuration:

   ```bash
   cd envs/development    # or envs/staging, envs/production
   terraform apply
   ```

3. **Other Terraform Commands**:

   - **Plan the infrastructure changes**:

     ```bash
     terraform plan
     ```

   - **Destroy the infrastructure**:

     ```bash
     terraform destroy
     ```

4. **Global Variables**:

   Edit the `terraform.tfvars` file to configure variables for your infrastructure.

5. **Variable Definitions**:

   The `variables.tf` file contains the necessary variable definitions for each environment.
   

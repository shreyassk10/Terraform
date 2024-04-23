# Azure App services creation using Terraform
## Explanation :

1. terraform-modules
   - [ ] This directory contains all the modules.
   - [ ] Any variable conditional needs to be checked in the variable.tf
   - [ ] Create multiple environvements as a module and reuse the code according to the environments.
         
2. terraform-resources
   - [ ] main.tf -> This file contains all the resources that we are going to deploy.
   - [ ] variables.tf -> Variables are defined in this file.
   - [ ] output.tf -> once resources are applied then it will give results for specific step.
   - [ ] providers.tf -> it contains cloud providers configuration

   

## Usage :

Clone the project using ssh configuration into any machine or while setting up any Ci tool with repository, reference the name and use the below commands.

- Terraform init -> It initializes the directory and downloads required provider, child module, backend along with the configuration.

- Terraform plan -> This command shows blue print of the configuration which has to be created.

- Terraform validate -> It validates the configuration of terraform files.

- Terraform apply -> This step applies the resources specified in this code.

  ### Recomended: After creating the resources state file will be created, it should be stored as a backend in azure blob storage.

# Azure App services creation using Terraform
## Explaination :

1. Terraform-modules
   - [ ] This directory contains all the modules.
   - [ ] Any variable conditional needs to be checked in the variable.tf
   - [ ] Create multiple environvements as a module and reuse the code according to the environments.
         
2. Terraform-resources
   - [ ] main.tf -> This file contains all the resources that we are going to deploy.
   - [ ] variables.tf -> Variables are defined in this file.
   - [ ] output.tf -> once resources are applied then it will give results for specific step.
   - [ ] providers.tf -> it contains cloud providers configuration

   
   
## Usage :


 - [ ] Setup the git i.e install git in vm

 - [ ] create terraform directory in vm

 - [ ] create ssh connection b/w vm and github by using below steps:
       
       - Add the required email and generate it:  ssh-keygen -t ed25519 -C "your_email@example.com"
       
       - Start the ssh-agent in the background: eval "$(ssh-agent -s)"
       
       - Add your SSH private key to the ssh-agent: ssh-add ~/.ssh/id_ed25519

 - [ ] intialize the command "git init"
       
 - [ ] clone the repository by giving command: git clone "url_of _the _repository"
       
       

 After cloning the code from remote repository (GitHub) to local repository (Vm), use the below commands of terraform:

- Terraform init -> It initializes the directory and downloads required provider, child module, backend along with the configuration.

- Terraform plan -> This command shows blue print of the configuration which has to be created.

- Terraform validate -> It validates the configuration of terraform files.

- Terraform apply -> This step applies the resources specified in this code.

  ### Recomended: After creating the resources state file will be created, it should be stored as a backend in azure blob storage.


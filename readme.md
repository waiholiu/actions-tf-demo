# this is the coach copy of the Github Terraform actions lab



## Step 1 - get it working on your local machine

create the new state store by running the statestore.sh file
set backend.tf to be the state store file
run terraform init
run terraform plan
run terraform apply


## steps 2 - get a actions working to do the deployment
- run setup-serviceprincipal on the right branch
- set up secrets in the github repo using the output from the setup-serviceprincipal
- check it in


## steps 3 - deploy to multiple environments
- add a variable.tf file and add env variable
- in deploy.yaml, pass in backend-config in the terraform init 
- in main.tf and everywhere else, use the env variable to set the names of the components
- in deploy.yaml, add a couple more environments and remember to use needs
- add in environment variable key = dev as envrionment variables 


## steps 4 - add in an approval process
- add in protection rules
- add in environments into yaml file


## step 5 - show a plan before applying
- add in an extra step to terraform plan
  



## step 6 - use reusable modules

- create a seperate file for the deploy and reference it





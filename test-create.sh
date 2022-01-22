 #!/bin/bash
 
 terraform init
  echo "please wait.."
 sleep 5
terraform plan -var-file=test.tfvars
  echo "please wait.."
sleep 5
terraform apply -auto-approve -input=false -var-file=test.tfvars

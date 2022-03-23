 #!/bin/bash
 

var=$(date +"%FORMAT_STRING")
now=$(date +"%m-%d-%Y")
printf "Process date: %s\n" $now
today=$(date +"%Y-%m-%d")


 terraform init
  echo "please wait.."
 sleep 5
terraform plan -var-file=test.tfvars
  echo "please wait.."
sleep 5
terraform apply -auto-approve -input=false -var-file=test.tfvars
echo "Terraform IaC Create Confirmation:"
printf "AWS Access & Terraform Test Successfully Completed Today: '%s'\n" "${now}"
 echo 'Goodbye!'

 #!/bin/bash
 
 var=$(date +"%FORMAT_STRING")
now=$(date +"%m-%d-%Y")
printf "Process date: %s\n" $now
today=$(date +"%Y-%m-%d")

 terraform destroy -var-file=test.tfvars -auto-approve
 echo "Terraform IaC Destroy Confirmation:"
 printf "AWS Access & Terraform Test Successfully Completed Today: '%s'\n" "${now}"
 echo 'Goodbye!'

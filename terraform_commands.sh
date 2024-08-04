# step1- Establsih connect between aws & terraform (it will download the plugin)
1 -- it will initalize the terraform configuration
2 -- it will get the password & authenticate with AWS
3 -- it will do the provider configuration (downloading the resourece plugins)
terraform init

# step2 - format the terraform code (re-arrange the code Allignment(structure))
terraform fmt

# step3 - validate the terraform code (syntax check)
terraform validate

# step4 - plan the terraform code (what will happen) 
#Dry run -- it will show what is going to create if you use this code ( if you are ok, then proceed/ you can make the changes)
terraform plan


#step5 - you have created the code on monday but your manager asked to apply this in weekends (saturday/sunday) 
# you will save this plan by using below command & apply on weekends
terraform plan -out 4augplan-vpc-creation

# step6 - apply above terraform plan by using the below command on weekends
terraform apply "4augplan-vpc-creation"

# step5 - apply the terraform code (apply the changes)
terraform apply --auto-approve

(#Once terraform apply command used it will generate terraform statefile ({}terraform.tfstate))
# Note- terraform statefile means -- it will store the information json (what it has created/deleted/modified)
# Note -- don't make changes directly in statefile)
# Incase if you done the modification in the configuration file -- it will generate new terraform statefile & also generate the backup file of the previous file
# you can validate the statefile version in json

# step6 - How to know the statefile information
terraform state list

#Note- don't save statefile locally (create s3 bucket & store it)


#step7 - planing to destroy the terraform -- don't do directly go & destroy. know before what you are destroying
terraform plan -destroy

#step8 - imagine you have created these resources via code -- S3 bucket/vpc/sg. 
#now you planned to destroy this infrastructure except s3 bucket. how will you achive that
terraform state list
terraform state rm aws_s3_bucket.<bucket_name>
#then you will code the code & comment the s3 bucket code

# step6 - destroy the terraform code
terraform destroy --auto-approve
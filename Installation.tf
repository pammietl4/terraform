#software installation

# terraform installation guide

step1 -- download the terraform from https://www.terraform.io/ -- (https://releases.hashicorp.com/terraform/1.9.3/terraform_1.9.3_windows_amd64.zip)

Step2 -- Extract the Zipfile of terraform

Step3 -- create a folder in C:\Tools  (Tools folder)

Step4 -- Go to Extracted terraform folder & cut terraform.exe file & paste it in C:\Tools

step5 -- got powershell & type sysdm.cpl -- it will open system properties

step6 -- select advanced option & click on Environmental variables

step7 -- select Path variable & Click Edit button -- (it will open a pop up window)

step8 -- type C:\Tools and click on Add button -- (add the path of terraform.exe file in this step)

step9 -- go to any location & open powershell --- type terraform -- version -- it will show you the version number of your installed terraform software

#validate terraform version from powershell
terraform --version

#install aws cli software from GUI
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

#validate aws cli installation
aws --version

#install phython
https://www.python.org/downloads/windows/

#install git
https://git-scm.com/downloads

#validate git installation
git --version

############ Provide your AWS credentials to aws cli & github credentials to git ################

#setup your aws account details in aws cli
aws configure

#setup github credentials into git
git config --global user.name "pammi"
git config --global user.email "pammietl4@gmail.com"
git config --global --list

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

# step5 - apply the terraform code (apply the changes)
terraform apply --auto-approve

# step6 - destroy the terraform code
terraform destroy --auto-approve

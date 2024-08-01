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
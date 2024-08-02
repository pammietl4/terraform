#Create ec2 instance in aws
resource "aws_instance" "Terraform_Server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair
  tags = {
    Name = "Terraform Server"
  }
}






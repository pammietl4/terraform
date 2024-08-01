#list aws ec2 instances in <ap-southeast-1>
aws ec2 describe-instances --region=ap-southeast-1

#list aws ec2 instances in <ap-southeast-1> & copy into a file
aws ec2 describe-instances --region=ap-southeast-1 >ec2-singapore.sh

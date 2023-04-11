1. Create vpc
2. Create Internet Gateway
3. Create Custom Route Table
4. Create a Subnet 
5. Associate subnet with Route Table
6. Create Security Group to allow port 22,80,443
7. Create a network interface with an ip in the subnet that was created in step 4
8. Assign an elastic IP to the network interface created in step 7
9. Create Ubuntu server and install/enable apache2

terraform init
terraform validate
terraform plan
terraform apply
terrafrom deploy

terraform apply --auto-approve
terraform destroy --auto-approve

terraform state list - list all created resources
terraform state show aws_instance.tf-web-server-instance  - see detailed view

terraform destroy -target aws_instance.tf-web-server-instance   - destroy only one resource
terraform apply -target aws_instance.tf-web-server-instance     - create only one resource

terraform apply -var "subnet-prefix=10.0.1.0/24"  - assign variable on cmd / can use var.default or tfvars file
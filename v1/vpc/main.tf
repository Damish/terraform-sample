
resource "aws_vpc" "tf-vpc-1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "production"
  }
}

resource "aws_subnet" "tf-subnet-1" {
  vpc_id     = aws_vpc.tf-vpc-1.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}



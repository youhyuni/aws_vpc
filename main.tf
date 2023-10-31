resource "aws_vpc" "terra_vpc" {
  cidr_block = var.cidr_network
  tags = {
    Name      = "terra_vpc"
    createdBy = "terraform"
  }
}

resource "aws_internet_gateway" "terra_ig" {
  vpc_id = aws_vpc.terra_vpc.id
}

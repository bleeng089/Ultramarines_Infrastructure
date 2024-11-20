resource "aws_internet_gateway" "Prod-igw" {
    vpc_id = aws_vpc.VPC-A-Virgina-Prod.id 
    tags = {
        Name = "Prod_IGW"
    }
}
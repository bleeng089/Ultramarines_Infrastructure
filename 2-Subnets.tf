resource "aws_subnet" "VPC-A-Virgina-Prod-Public" {
    vpc_id = aws_vpc.VPC-A-Virgina-Prod.id
    cidr_block = "10.76.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
        Name: "VPC-A-Virgina-Prod-Public"
    }
}
resource "aws_subnet" "VPC-A-Virgina-Prod-Private" {
    vpc_id = aws_vpc.VPC-A-Virgina-Prod.id
    cidr_block = "10.76.11.0/24"
    availability_zone = "us-east-1a"
    tags = {
        Name: "VPC-A-Virgina-Prod-Private"
    }
}
resource "aws_subnet" "VPC-D-Virgina-DEV-Private" {
    vpc_id = aws_vpc.VPC-D-Virgina-DEV.id
    cidr_block = "10.75.14.0/24"
    availability_zone = "us-east-1d"
    tags = {
        Name: "VPC-D-Virgina-DEV-Private"
    }
}
resource "aws_subnet" "VPC-F-Virgina-TEST-Private" {
    vpc_id = aws_vpc.VPC-F-Virgina-TEST.id
    cidr_block = "10.74.16.0/24"
    availability_zone = "us-east-1f"
    tags = {
      Name: "VPC-F-Virgina-TEST-Private"
    }
}
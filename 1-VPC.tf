resource "aws_vpc" "VPC-A-Virgina-Prod" {
    cidr_block = "10.76.0.0/16"
    tags = {
        Name: "VPC-A-Virgina-Prod"
    }
}
resource "aws_vpc" "VPC-D-Virgina-DEV" {
    cidr_block = "10.75.0.0/16"
    tags = {
        Name: "VPC-D-Virgina-DEV"
    }
}
resource "aws_vpc" "VPC-F-Virgina-TEST" {
    cidr_block = "10.74.0.0/16"
    tags = {
        Name: "VPC-F-Virgina-TEST"
    }
}


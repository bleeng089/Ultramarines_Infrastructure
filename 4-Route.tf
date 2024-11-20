resource "aws_route_table" "VPC-A-Virgina-Prod-RT" {
    vpc_id = aws_vpc.VPC-A-Virgina-Prod.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.Prod-igw.id
    }
    route {
        cidr_block = "10.0.0.0/8"
        transit_gateway_id = aws_ec2_transit_gateway.US_TGW1.id
    }
    tags = {
        Name: "VPC-A-Virgina-Prod-RT"
    }
}
resource "aws_route_table" "VPC-D-Virgina-DEV-RT" {
    vpc_id = aws_vpc.VPC-D-Virgina-DEV.id
    route {
        cidr_block = "10.0.0.0/8"
        transit_gateway_id = aws_ec2_transit_gateway.US_TGW1.id
    }
        tags = {
        Name: "VPC-D-Virgina-DEV-RT"
    }
}
resource "aws_route_table" "VPC-F-Virgina-TEST-RT" {
    vpc_id = aws_vpc.VPC-F-Virgina-TEST.id
    route {
        cidr_block = "10.0.0.0/8"
        transit_gateway_id = aws_ec2_transit_gateway.US_TGW1.id
    }
    tags = {
      Name: "VPC-F-Virgina-TEST-RT"
    }
}




resource "aws_route_table_association" "VPC-A-Virgina-Prod-attach" {
    subnet_id = aws_subnet.VPC-A-Virgina-Prod-Public.id
    route_table_id = aws_route_table.VPC-A-Virgina-Prod-RT.id 
  
}
resource "aws_route_table_association" "VPC-D-Virgina-DEV-Private-attach" {
    subnet_id = aws_subnet.VPC-D-Virgina-DEV-Private.id
    route_table_id = aws_route_table.VPC-D-Virgina-DEV-RT.id 
  
}
resource "aws_route_table_association" "VPC-F-Virgina-TEST-Private-attach" {
    subnet_id = aws_subnet.VPC-F-Virgina-TEST-Private.id
    route_table_id = aws_route_table.VPC-F-Virgina-TEST-RT.id 
  
}
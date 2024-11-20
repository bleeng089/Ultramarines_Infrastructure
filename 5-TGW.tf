resource "aws_ec2_transit_gateway" "US_TGW1" {
    tags = {
        Name: "US_TGW1"
    }
}



resource "aws_ec2_transit_gateway_vpc_attachment" "VPC-A-Virgina-Prod-Public-TG-attach" {
  subnet_ids         = [aws_subnet.VPC-A-Virgina-Prod-Public.id]
  transit_gateway_id = aws_ec2_transit_gateway.US_TGW1.id
  vpc_id             = aws_vpc.VPC-A-Virgina-Prod.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "VPC-D-Virgina-DEV-Private-TG-attach" {
  subnet_ids         = [aws_subnet.VPC-D-Virgina-DEV-Private.id]
  transit_gateway_id = aws_ec2_transit_gateway.US_TGW1.id
  vpc_id             = aws_vpc.VPC-D-Virgina-DEV.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "VPC-F-Virgina-TEST-Private-TG-attach" {
  subnet_ids         = [aws_subnet.VPC-F-Virgina-TEST-Private.id]
  transit_gateway_id = aws_ec2_transit_gateway.US_TGW1.id
  vpc_id             = aws_vpc.VPC-F-Virgina-TEST.id
}
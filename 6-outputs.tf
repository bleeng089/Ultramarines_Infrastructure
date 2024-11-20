output "vpc_id_Public-A" {
    value = aws_vpc.VPC-A-Virgina-Prod.id
}
output "vpc_id_Private-D" {
    value = aws_vpc.VPC-D-Virgina-DEV.id
}
output "vpc_id_Private-F" {
    value = aws_vpc.VPC-F-Virgina-TEST.id
}
output "subnet_id_Public-A" {
    value = aws_subnet.VPC-A-Virgina-Prod-Public.id
}
output "subnet_id_Private-A" {
    value = aws_subnet.VPC-A-Virgina-Prod-Private.id
}
output "subnet_id_Private-D" {
    value = aws_subnet.VPC-D-Virgina-DEV-Private.id
}
output "subnet_id_Private-F" {
    value = aws_subnet.VPC-F-Virgina-TEST-Private.id
}
output "route_table_id_Public-A" {
    value = aws_route_table.VPC-A-Virgina-Prod-RT.id
}
output "route_table_id_Private-D" {
    value = aws_route_table.VPC-D-Virgina-DEV-RT.id
}
output "route_table_id_Private-F" {
    value = aws_route_table.VPC-F-Virgina-TEST-RT.id
}
output "internet_gateway_id_Prod" {
    value = aws_internet_gateway.Prod-igw.id
}
output "ec2_transit_gateway_id_US1" {
    value = aws_ec2_transit_gateway.US_TGW1.id
}
output "route_table_association_id_VPC-A-Virgina-Prod-attach" {
    value = aws_route_table_association.VPC-A-Virgina-Prod-attach.id
}
output "route_table_association_id_VPC-D-Virgina-DEV-Private-attach" {
    value = aws_route_table_association.VPC-D-Virgina-DEV-Private-attach.id
}
output "route_table_association_id_VPC-F-Virgina-TEST-Private-attach" {
    value = aws_route_table_association.VPC-F-Virgina-TEST-Private-attach.id
}
output "ec2_transit_gateway_vpc_attachment_id_VPC-A-Virgina-Prod-Public-TG-attach" {
    value = aws_ec2_transit_gateway_vpc_attachment.VPC-A-Virgina-Prod-Public-TG-attach.id
}
output "ec2_transit_gateway_vpc_attachment_id_VPC-D-Virgina-DEV-Private-TG-attach" {
    value = aws_ec2_transit_gateway_vpc_attachment.VPC-D-Virgina-DEV-Private-TG-attach.id
}
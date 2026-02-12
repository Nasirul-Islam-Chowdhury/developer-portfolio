# VPC Outputs organized by region
output "vpc_ids_by_region" {
  description = "Map of VPC IDs organized by region"
  value = {
    us-east-1      = { for k, v in aws_vpc.us_east_1 : k => v.id }
    us-east-2      = { for k, v in aws_vpc.us_east_2 : k => v.id }
    us-west-1      = { for k, v in aws_vpc.us_west_1 : k => v.id }
    us-west-2      = { for k, v in aws_vpc.us_west_2 : k => v.id }
    eu-central-1   = { for k, v in aws_vpc.eu_central_1 : k => v.id }
    eu-west-1      = { for k, v in aws_vpc.eu_west_1 : k => v.id }
    eu-west-2      = { for k, v in aws_vpc.eu_west_2 : k => v.id }
    eu-west-3      = { for k, v in aws_vpc.eu_west_3 : k => v.id }
    eu-north-1     = { for k, v in aws_vpc.eu_north_1 : k => v.id }
    ap-northeast-1 = { for k, v in aws_vpc.ap_northeast_1 : k => v.id }
    ap-northeast-2 = { for k, v in aws_vpc.ap_northeast_2 : k => v.id }
    ap-northeast-3 = { for k, v in aws_vpc.ap_northeast_3 : k => v.id }
    ap-south-1     = { for k, v in aws_vpc.ap_south_1 : k => v.id }
    ap-southeast-1 = { for k, v in aws_vpc.ap_southeast_1 : k => v.id }
    ap-southeast-2 = { for k, v in aws_vpc.ap_southeast_2 : k => v.id }
    ca-central-1   = { for k, v in aws_vpc.ca_central_1 : k => v.id }
    sa-east-1      = { for k, v in aws_vpc.sa_east_1 : k => v.id }
  }
}

# Subnet Outputs organized by region
output "subnet_ids_by_region" {
  description = "Map of subnet IDs organized by region"
  value = {
    us-east-1      = { for k, v in aws_subnet.us_east_1 : k => v.id }
    us-east-2      = { for k, v in aws_subnet.us_east_2 : k => v.id }
    us-west-1      = { for k, v in aws_subnet.us_west_1 : k => v.id }
    us-west-2      = { for k, v in aws_subnet.us_west_2 : k => v.id }
    eu-central-1   = { for k, v in aws_subnet.eu_central_1 : k => v.id }
    eu-west-1      = { for k, v in aws_subnet.eu_west_1 : k => v.id }
    eu-west-2      = { for k, v in aws_subnet.eu_west_2 : k => v.id }
    eu-west-3      = { for k, v in aws_subnet.eu_west_3 : k => v.id }
    eu-north-1     = { for k, v in aws_subnet.eu_north_1 : k => v.id }
    ap-northeast-1 = { for k, v in aws_subnet.ap_northeast_1 : k => v.id }
    ap-northeast-2 = { for k, v in aws_subnet.ap_northeast_2 : k => v.id }
    ap-northeast-3 = { for k, v in aws_subnet.ap_northeast_3 : k => v.id }
    ap-south-1     = { for k, v in aws_subnet.ap_south_1 : k => v.id }
    ap-southeast-1 = { for k, v in aws_subnet.ap_southeast_1 : k => v.id }
    ap-southeast-2 = { for k, v in aws_subnet.ap_southeast_2 : k => v.id }
    ca-central-1   = { for k, v in aws_subnet.ca_central_1 : k => v.id }
    sa-east-1      = { for k, v in aws_subnet.sa_east_1 : k => v.id }
  }
}

# Security Group Outputs organized by region
output "security_group_ids_by_region" {
  description = "Map of security group IDs organized by region"
  value = {
    us-east-1      = { for k, v in aws_security_group.us_east_1 : k => v.id }
    us-east-2      = { for k, v in aws_security_group.us_east_2 : k => v.id }
    us-west-1      = { for k, v in aws_security_group.us_west_1 : k => v.id }
    us-west-2      = { for k, v in aws_security_group.us_west_2 : k => v.id }
    eu-central-1   = { for k, v in aws_security_group.eu_central_1 : k => v.id }
    eu-west-1      = { for k, v in aws_security_group.eu_west_1 : k => v.id }
    eu-west-2      = { for k, v in aws_security_group.eu_west_2 : k => v.id }
    eu-west-3      = { for k, v in aws_security_group.eu_west_3 : k => v.id }
    eu-north-1     = { for k, v in aws_security_group.eu_north_1 : k => v.id }
    ap-northeast-1 = { for k, v in aws_security_group.ap_northeast_1 : k => v.id }
    ap-northeast-2 = { for k, v in aws_security_group.ap_northeast_2 : k => v.id }
    ap-northeast-3 = { for k, v in aws_security_group.ap_northeast_3 : k => v.id }
    ap-south-1     = { for k, v in aws_security_group.ap_south_1 : k => v.id }
    ap-southeast-1 = { for k, v in aws_security_group.ap_southeast_1 : k => v.id }
    ap-southeast-2 = { for k, v in aws_security_group.ap_southeast_2 : k => v.id }
    ca-central-1   = { for k, v in aws_security_group.ca_central_1 : k => v.id }
    sa-east-1      = { for k, v in aws_security_group.sa_east_1 : k => v.id }
  }
}

# EC2 Instance Outputs
output "ec2_instance_id" {
  description = "ID of the imported EC2 instance"
  value       = aws_instance.test.id
}

output "ec2_instance_public_ip" {
  description = "Public IP of the EC2 instance (if available)"
  value       = aws_instance.test.public_ip
}

output "ec2_instance_private_ip" {
  description = "Private IP of the EC2 instance"
  value       = aws_instance.test.private_ip
}

# Summary Outputs
output "resource_summary" {
  description = "Summary of all imported resources"
  value = {
    vpcs             = 17
    subnets          = 55
    security_groups  = 19
    ec2_instances    = 1
    total_resources  = 92
    regions          = 17
  }
}

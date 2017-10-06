variable "name" {
  description = "The name of the VPC."
}

variable "cidr" {
  description = "The CIDR of the VPC."
}

variable "public_subnet" {
  description = "The public subnet to create"
}

variable "enable_dns_hostnames" {
  description = "Should be true if you want to user private DNS within the VPC."
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true if you want to use private DNS within the VPC."
  default     = true
}

output "public_subnet_id" {
  value = "${aws_subnet.public.id}"
}

output "vpc_id" {
  value = "aws_vpc.tfb.id"
}

output "cidr" {
  value = "${aws_vpc.tfb.cidr_block}"
}

output "route_table_id" {
  value = "aws_vpc.tfb.main_route_table_id"
  sensitive = true
}

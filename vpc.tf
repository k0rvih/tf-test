data "aws_vpc" "vpc_id" {
    default = true
}

output "vpc_id" {
  value = data.aws_vpc.vpc_id.id
}

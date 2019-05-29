output "vpc_id" {
  value       = "${local.vpc_id}"
  description = "kops VPC ID"
}

output "private_subnet_ids" {
  value       = "${flatten(data.aws_subnet_ids.private.*.ids)}"
  description = "Private subnet IDs in the VPC"
}

output "utility_subnet_ids" {
  value       = "${flatten(data.aws_subnet_ids.utility.*.ids)}"
  description = "Utility subnet IDs in the VPC"
}

output "bastion_security_group_arn" {
  value       = "${join("", data.aws_security_group.bastion.*.arn)}"
  description = "Bastion server Security Group ARN  "
}

output "bastion_security_group_id" {
  value       = "${join("", data.aws_security_group.bastion.*.id)}"
  description = "Bastion server Security Group ID"
}

output "masters_security_group_arn" {
  value       = "${join("", data.aws_security_group.masters.*.arn)}"
  description = "kops masters Security Group ARN"
}

output "masters_security_group_id" {
  value       = "${join("", data.aws_security_group.masters.*.id)}"
  description = "kops masters Security Group ID"
}

output "nodes_security_group_arn" {
  value       = "${join("", data.aws_security_group.nodes.*.arn)}"
  description = "kops nodes Security Group ARN"
}

output "nodes_security_group_id" {
  value       = "${join("", data.aws_security_group.nodes.*.id)}"
  description = "kops nodes Security Group ID"
}

output "masters_role_name" {
  value       = "${data.aws_iam_role.masters.id}"
  description = "kops masters IAM Role name"
}

output "masters_role_arn" {
  value       = "${data.aws_iam_role.masters.arn}"
  description = "kops masters IAM Role ARN"
}

output "nodes_role_name" {
  value       = "${data.aws_iam_role.nodes.id}"
  description = "Kops nodes IAM Role name"
}

output "nodes_role_arn" {
  value       = "${data.aws_iam_role.nodes.arn}"
  description = "kops nodes IAM Role ARN"
}

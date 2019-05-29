## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster_name | The Kubernetes cluster name | string | - | yes |
| enabled | Set to false to prevent the module from creating or accessing any resources | string | `true` | no |
| vpc_id | The kops VPC ID | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| bastion_security_group_arn | Bastion server Security Group ARN |
| bastion_security_group_id | Bastion server Security Group ID |
| masters_role_arn | K8s nodes Security Group ID |
| masters_role_name | K8s nodes Security Group ARN |
| masters_security_group_arn | kops masters Security Group ARN |
| masters_security_group_id | kops masters Security Group ID |
| nodes_role_arn | Kops nodes Role ARN |
| nodes_role_name | Kops nodes Role name |
| nodes_security_group_arn | kops nodes Security Group ARN |
| nodes_security_group_id | kops nodes Security Group ID |
| private_subnet_ids | Private subnet IDs in the VPC |
| utility_subnet_ids | Utility subnet IDs in the VPC |
| vpc_id | kops VPC ID |


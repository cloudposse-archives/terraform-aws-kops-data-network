## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.0, < 0.14.0 |
| aws | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_name | The Kubernetes cluster name | `string` | n/a | yes |
| enabled | Set to false to prevent the module from creating or accessing any resources | `bool` | `true` | no |
| vpc\_id | The kops VPC ID | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| bastion\_security\_group\_arn | Bastion server Security Group ARN |
| bastion\_security\_group\_id | Bastion server Security Group ID |
| masters\_security\_group\_arn | kops masters Security Group ARN |
| masters\_security\_group\_id | kops masters Security Group ID |
| nodes\_security\_group\_arn | kops nodes Security Group ARN |
| nodes\_security\_group\_id | kops nodes Security Group ID |
| private\_subnet\_ids | Private subnet IDs in the VPC |
| utility\_subnet\_ids | Utility subnet IDs in the VPC |
| vpc\_id | kops VPC ID |


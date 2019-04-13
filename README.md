<!-- This file was automatically generated by the `build-harness`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->
[![README Header][readme_header_img]][readme_header_link]

[![Cloud Posse][logo]](https://cpco.io/homepage)

# terraform-aws-kops-data-network [![Build Status](https://travis-ci.org/cloudposse/terraform-aws-kops-data-network.svg?branch=master)](https://travis-ci.org/cloudposse/terraform-aws-kops-data-network) [![Latest Release](https://img.shields.io/github/release/cloudposse/terraform-aws-kops-data-network.svg)](https://github.com/cloudposse/terraform-aws-kops-data-network/releases/latest) [![Slack Community](https://slack.cloudposse.com/badge.svg)](https://slack.cloudposse.com)


Terraform module to lookup network resources within a [Kops](https://github.com/kubernetes/kops) cluster


---

This project is part of our comprehensive ["SweetOps"](https://cpco.io/sweetops) approach towards DevOps. 
[<img align="right" title="Share via Email" src="https://docs.cloudposse.com/images/ionicons/ios-email-outline-2.0.1-16x16-999999.svg"/>][share_email]
[<img align="right" title="Share on Google+" src="https://docs.cloudposse.com/images/ionicons/social-googleplus-outline-2.0.1-16x16-999999.svg" />][share_googleplus]
[<img align="right" title="Share on Facebook" src="https://docs.cloudposse.com/images/ionicons/social-facebook-outline-2.0.1-16x16-999999.svg" />][share_facebook]
[<img align="right" title="Share on Reddit" src="https://docs.cloudposse.com/images/ionicons/social-reddit-outline-2.0.1-16x16-999999.svg" />][share_reddit]
[<img align="right" title="Share on LinkedIn" src="https://docs.cloudposse.com/images/ionicons/social-linkedin-outline-2.0.1-16x16-999999.svg" />][share_linkedin]
[<img align="right" title="Share on Twitter" src="https://docs.cloudposse.com/images/ionicons/social-twitter-outline-2.0.1-16x16-999999.svg" />][share_twitter]


[![Terraform Open Source Modules](https://docs.cloudposse.com/images/terraform-open-source-modules.svg)][terraform_modules]



It's 100% Open Source and licensed under the [APACHE2](LICENSE).







We literally have [*hundreds of terraform modules*][terraform_modules] that are Open Source and well-maintained. Check them out! 







## Usage

```hcl
module "kops_metadata" {
  source       = "git::https://github.com/cloudposse/terraform-aws-kops-data-network.git?ref=master"
  cluster_name = "cluster.domain.com"
}
```
The module will use the cluster name to look up resources via AWS tags. If that fails or picks the wrong network,
you can pass in the correct AWS VPC ID in `vcp_id` and it will return the information related to that VPC.






## Makefile Targets
```
Available targets:

  help                                Help screen
  help/all                            Display help for all targets
  help/short                          This help short screen
  lint                                Lint terraform code

```
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
| masters_security_group_arn | kops masters Security Group ARN |
| masters_security_group_id | kops masters Security Group ID |
| nodes_security_group_arn | kops nodes Security Group ARN |
| nodes_security_group_id | kops nodes Security Group ID |
| private_subnet_ids | Private subnet IDs in the VPC |
| utility_subnet_ids | Utility subnet IDs in the VPC |
| vpc_id | kops VPC ID |




## Share the Love 

Like this project? Please give it a ★ on [our GitHub](https://github.com/cloudposse/terraform-aws-kops-data-network)! (it helps us **a lot**) 

Are you using this project or any of our other projects? Consider [leaving a testimonial][testimonial]. =)


## Related Projects

Check out these related projects.

- [terraform-aws-kops-data-iam](https://github.com/cloudposse/terraform-aws-kops-data-network) - Terraform module to lookup IAM roles within a Kops cluster
- [terraform-aws-kops-external-dns](https://github.com/cloudposse/terraform-aws-kops-external-dns) - Terraform module to provision an IAM role for external-dns running in a Kops cluster, and attach an IAM policy to the role with permissions to modify Route53 record sets
- [terraform-aws-kops-ecr](https://github.com/cloudposse/terraform-aws-kops-ecr) - Terraform module to provision an ECR repository and grant users and kubernetes nodes access to it.
- [terraform-aws-kops-state-backend](https://github.com/cloudposse/terraform-aws-kops-state-backend) - Easily bootstrap kops clusters (DNS & S3 Bucket)
- [terraform-aws-kops-vpc-peering](https://github.com/cloudposse/terraform-aws-kops-vpc-peering) - Terraform module to create a peering connection between a backing services VPC and a VPC created by Kops
- [terraform-aws-kops-route53](https://github.com/cloudposse/terraform-aws-kops-route53) - Terraform module to lookup the IAM role associated with `kops` masters, and attach an IAM policy to the role with permissions to modify Route53 record sets
- [terraform-aws-kops-vault-backend](https://github.com/cloudposse/terraform-aws-kops-vault-backend) - Terraform module to provision an S3 bucket for HashiCorp Vault secrets storage, and an IAM role and policy with permissions for Kops nodes to access the bucket
- [terraform-aws-kops-chart-repo](https://github.com/cloudposse/terraform-aws-kops-chart-repo) - Terraform module to provision an S3 bucket for Helm chart repository, and an IAM role and policy with permissions for Kops nodes to access the bucket



## Help

**Got a question?**

File a GitHub [issue](https://github.com/cloudposse/terraform-aws-kops-data-network/issues), send us an [email][email] or join our [Slack Community][slack].

[![README Commercial Support][readme_commercial_support_img]][readme_commercial_support_link]

## Commercial Support

Work directly with our team of DevOps experts via email, slack, and video conferencing. 

We provide [*commercial support*][commercial_support] for all of our [Open Source][github] projects. As a *Dedicated Support* customer, you have access to our team of subject matter experts at a fraction of the cost of a full-time engineer. 

[![E-Mail](https://img.shields.io/badge/email-hello@cloudposse.com-blue.svg)][email]

- **Questions.** We'll use a Shared Slack channel between your team and ours.
- **Troubleshooting.** We'll help you triage why things aren't working.
- **Code Reviews.** We'll review your Pull Requests and provide constructive feedback.
- **Bug Fixes.** We'll rapidly work to fix any bugs in our projects.
- **Build New Terraform Modules.** We'll [develop original modules][module_development] to provision infrastructure.
- **Cloud Architecture.** We'll assist with your cloud strategy and design.
- **Implementation.** We'll provide hands-on support to implement our reference architectures. 



## Terraform Module Development

Are you interested in custom Terraform module development? Submit your inquiry using [our form][module_development] today and we'll get back to you ASAP.


## Slack Community

Join our [Open Source Community][slack] on Slack. It's **FREE** for everyone! Our "SweetOps" community is where you get to talk with others who share a similar vision for how to rollout and manage infrastructure. This is the best place to talk shop, ask questions, solicit feedback, and work together as a community to build totally *sweet* infrastructure.

## Newsletter

Signup for [our newsletter][newsletter] that covers everything on our technology radar.  Receive updates on what we're up to on GitHub as well as awesome new projects we discover. 

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/cloudposse/terraform-aws-kops-data-network/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing this project or [help out](https://cpco.io/help-out) with our other projects, we would love to hear from you! Shoot us an [email][email].

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to merge the latest changes from "upstream" before making a pull request!


## Copyright

Copyright © 2017-2019 [Cloud Posse, LLC](https://cpco.io/copyright)



## License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.









## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

This project is maintained and funded by [Cloud Posse, LLC][website]. Like it? Please let us know by [leaving a testimonial][testimonial]!

[![Cloud Posse][logo]][website]

We're a [DevOps Professional Services][hire] company based in Los Angeles, CA. We ❤️  [Open Source Software][we_love_open_source].

We offer [paid support][commercial_support] on all of our projects.  

Check out [our other projects][github], [follow us on twitter][twitter], [apply for a job][jobs], or [hire us][hire] to help with your cloud strategy and implementation.



### Contributors

|  [![Erik Osterman][osterman_avatar]][osterman_homepage]<br/>[Erik Osterman][osterman_homepage] |
|---|

  [osterman_homepage]: https://github.com/osterman
  [osterman_avatar]: https://github.com/osterman.png?size=150



[![README Footer][readme_footer_img]][readme_footer_link]
[![Beacon][beacon]][website]

  [logo]: https://cloudposse.com/logo-300x69.svg
  [docs]: https://cpco.io/docs
  [website]: https://cpco.io/homepage
  [github]: https://cpco.io/github
  [jobs]: https://cpco.io/jobs
  [hire]: https://cpco.io/hire
  [slack]: https://cpco.io/slack
  [linkedin]: https://cpco.io/linkedin
  [twitter]: https://cpco.io/twitter
  [testimonial]: https://cpco.io/leave-testimonial
  [newsletter]: https://cpco.io/newsletter
  [email]: https://cpco.io/email
  [commercial_support]: https://cpco.io/commercial-support
  [we_love_open_source]: https://cpco.io/we-love-open-source
  [module_development]: https://cpco.io/module-development
  [terraform_modules]: https://cpco.io/terraform-modules
  [readme_header_img]: https://cloudposse.com/readme/header/img?repo=cloudposse/terraform-aws-kops-data-network
  [readme_header_link]: https://cloudposse.com/readme/header/link?repo=cloudposse/terraform-aws-kops-data-network
  [readme_footer_img]: https://cloudposse.com/readme/footer/img?repo=cloudposse/terraform-aws-kops-data-network
  [readme_footer_link]: https://cloudposse.com/readme/footer/link?repo=cloudposse/terraform-aws-kops-data-network
  [readme_commercial_support_img]: https://cloudposse.com/readme/commercial-support/img?repo=cloudposse/terraform-aws-kops-data-network
  [readme_commercial_support_link]: https://cloudposse.com/readme/commercial-support/link?repo=cloudposse/terraform-aws-kops-data-network
  [share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-kops-data-network&url=https://github.com/cloudposse/terraform-aws-kops-data-network
  [share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-kops-data-network&url=https://github.com/cloudposse/terraform-aws-kops-data-network
  [share_reddit]: https://reddit.com/submit/?url=https://github.com/cloudposse/terraform-aws-kops-data-network
  [share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/cloudposse/terraform-aws-kops-data-network
  [share_googleplus]: https://plus.google.com/share?url=https://github.com/cloudposse/terraform-aws-kops-data-network
  [share_email]: mailto:?subject=terraform-aws-kops-data-network&body=https://github.com/cloudposse/terraform-aws-kops-data-network
  [beacon]: https://ga-beacon.cloudposse.com/UA-76589703-4/cloudposse/terraform-aws-kops-data-network?pixel&cs=github&cm=readme&an=terraform-aws-kops-data-network

[![Slalom][logo]](https://slalom.com)

# terraform-aws-ssh-ssm

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-ssh-ssm/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-ssh-ssm)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-ssh-ssm.svg)](https://github.com/JamesWoolfenden/terraform-aws-ssh-ssm/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![pre-commit](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Moving on from storing your keys in buckets, this module keeps your keys encrypted in ssm. It uses the default kms key for now. IAM policies control access in the parameter store.
Follow the exampleA for the implementation.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "ssh-ssm" {
  source                  = "JamesWoolfenden/ssh-ssm/aws"
  version                 = "0.2.12"
  ssmpath                 = var.ssmpath
  key_names               = var.key_names
  common_tags             = var.common_tags
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| tls | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| common\_tags | Implements the common tags scheme | `map` | n/a | yes |
| key\_names | A list of key names | `list` | n/a | yes |
| ssmpath | Where in SSM parameter to store this | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| key-path | The path to the key in ssm |
| keys | The name of the key |
| private\_key\_pem | The private key data in PEM format. |
| public\_key\_fingerprint\_md5 | The md5 hash of the public key data in OpenSSH MD5 hash format |
| public\_key\_openssh | The public key data in OpenSSH authorized\_keys format |
| public\_key\_pem | The public key data in PEM format. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Instructions

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-ssh-ssm/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-ssh-ssm/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

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

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-ssh-ssm&url=https://github.com/jameswoolfenden/terraform-aws-ssh-ssm
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-ssh-ssm&url=https://github.com/jameswoolfenden/terraform-aws-ssh-ssm
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-ssh-ssm
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-ssh-ssm
[share_email]: mailto:?subject=terraform-aws-ssh-ssm&body=https://github.com/jameswoolfenden/terraform-aws-ssh-ssm

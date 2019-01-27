## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common_tags | - | map | - | yes |
| depends_on | This is a way to make a module depends on, which isn't built in. | list | `<list>` | no |
| key_names | - | list | - | yes |
| ssmpath | Where in SSM parameter to store this | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| key-path | - |
| keys | - |

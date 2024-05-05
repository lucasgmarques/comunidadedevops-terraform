# comunidadedevops-terraform
Terraform Files

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_subnet.subnet_eks_public_1a](https://registry.terraform.io/providers/hashicorp/aws/5.46.0/docs/resources/subnet) | resource |
| [aws_subnet.subnet_eks_public_1b](https://registry.terraform.io/providers/hashicorp/aws/5.46.0/docs/resources/subnet) | resource |
| [aws_vpc.vpc-eks](https://registry.terraform.io/providers/hashicorp/aws/5.46.0/docs/resources/vpc) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/5.46.0/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR block to be used for the VPC | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
# Flexible Engine OBS Terraform Module

Terraform module which creates OBS Bucket on Flexible Engine

> Official Terraform documentation for OBS : https://registry.terraform.io/providers/FlexibleEngineCloud/flexibleengine/latest/docs/resources/obs_bucket

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_flexibleengine"></a> [flexibleengine](#provider\_flexibleengine) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [flexibleengine_obs_bucket.this](https://registry.terraform.io/providers/FlexibleEngineCloud/flexibleengine/latest/docs/resources/obs_bucket) | resource |
| [flexibleengine_s3_bucket_policy.this](https://registry.terraform.io/providers/FlexibleEngineCloud/flexibleengine/latest/docs/resources/s3_bucket_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acl"></a> [acl](#input\_acl) | (Optional) The canned ACL to apply. Defaults to 'private'. Conflicts with `grant` | `string` | `"private"` | no |
| <a name="input_attach_policy"></a> [attach\_policy](#input\_attach\_policy) | Controls if OBS bucket should have bucket policy attached (set to `true` to use value of `policy` as bucket policy) | `bool` | `false` | no |
| <a name="input_bucket"></a> [bucket](#input\_bucket) | (Optional, Forces new resource) The name of the bucket. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_bucket_prefix"></a> [bucket\_prefix](#input\_bucket\_prefix) | (Optional, Forces new resource) Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket. | `string` | `null` | no |
| <a name="input_cors_rule"></a> [cors\_rule](#input\_cors\_rule) | List of maps containing rules for Cross-Origin Resource Sharing. | `any` | `[]` | no |
| <a name="input_create_bucket"></a> [create\_bucket](#input\_create\_bucket) | Controls if OBS bucket should be created | `bool` | `true` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | (Optional, Default:false ) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable. | `bool` | `false` | no |
| <a name="input_lifecycle_rule"></a> [lifecycle\_rule](#input\_lifecycle\_rule) | List of maps containing configuration of object lifecycle management. | `any` | `[]` | no |
| <a name="input_logging"></a> [logging](#input\_logging) | Map containing access bucket logging configuration. | `map(string)` | `{}` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | (Optional) A valid bucket policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy. | `string` | `null` | no |
| <a name="input_storage_class"></a> [storage\_class](#input\_storage\_class) | (Optional) pecifies the storage class of the bucket. OBS provides three storage classes: STANDARD, STANDARD\_IA (Infrequent Access) and GLACIER (Archive). Defaults to STANDARD. | `string` | `null` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | Versioning configuration (True/False). | `bool` | `false` | no |
| <a name="input_website"></a> [website](#input\_website) | Map containing static web-site hosting or redirect configuration. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_obs_bucket_bucket_domain_name"></a> [this\_obs\_bucket\_bucket\_domain\_name](#output\_this\_obs\_bucket\_bucket\_domain\_name) | The bucket domain name. Will be of format <bucket-name>.oss.<region>.prod-cloud-ocb.orange-business.com. |
| <a name="output_this_obs_bucket_id"></a> [this\_obs\_bucket\_id](#output\_this\_obs\_bucket\_id) | The name of the bucket. |
| <a name="output_this_obs_bucket_region"></a> [this\_obs\_bucket\_region](#output\_this\_obs\_bucket\_region) | The Flexible Engine region this bucket resides in. |
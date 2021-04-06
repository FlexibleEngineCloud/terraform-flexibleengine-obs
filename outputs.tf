
output "this_obs_bucket_id" {
  description = "The name of the bucket."
  value       = element(concat(flexibleengine_obs_bucket.this.*.id, [""]), 0)
}

output "this_obs_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format <bucket-name>.oss.<region>.prod-cloud-ocb.orange-business.com."
  value       = element(concat(flexibleengine_obs_bucket.this.*.bucket_domain_name, [""]), 0)
}

output "this_obs_bucket_region" {
  description = "The Flexible Engine region this bucket resides in."
  value       = element(concat(flexibleengine_obs_bucket.this.*.region, [""]), 0)
}
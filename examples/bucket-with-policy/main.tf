module "s3_bucket" {
  source = "../../"

  bucket = "test-bucket-547874"
  acl    = "private"

  attach_policy= true
  policy = <<POLICY
{
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "*",
      "Resource": "arn:aws:s3:::test-bucket-547874/*", 
      "Condition": {
         "IpAddress": {"aws:SourceIp": "8.8.8.8/32"}
      } 
    } 
  ]
}
POLICY

  versioning = true
}
module "s3_bucket" {
  source = "../"

  bucket = "test-bucket-547874"
  acl    = "private"

  versioning = true
}
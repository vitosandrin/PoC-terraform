resource "aws_s3_bucket" "webbucket" {
  bucket = "meu-bucket"
}

resource "aws_s3_bucket_acl" "webbucket_acl" {
  bucket = aws_s3_bucket.webbucket.id
  acl    = "private"
}

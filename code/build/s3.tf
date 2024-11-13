provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "ee8cde62-4faa-47b3-8458-deb4a7e80521"
    git_commit           = "609d6ae6f2550a216f03ebbca6699f5a98bbd2a5"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 17:58:04"
    git_last_modified_by = "migvill@users.noreply.github.com"
    git_modifiers        = "migvill"
    git_org              = "migvill"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

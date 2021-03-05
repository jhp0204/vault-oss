resource "aws_s3_bucket" "terraform-state-jhp0204" {
  bucket = "terraform-up-and-running-state"

  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

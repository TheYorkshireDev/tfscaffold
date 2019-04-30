# Create root level resources here...
resource "aws_s3_bucket" "awsbucket" {
  bucket = "${var.environment}.${var.region}.awsbucket"
  acl = "private"

  tags = {
    Name        = "AWS bucket"
    Environment = "${var.environment}"
    Project     = "${var.project}"
    Region      = "${var.region}"
  }
}
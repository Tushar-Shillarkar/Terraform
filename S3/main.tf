resource "random_id" "rand_id" {
  byte_length = 8
}

resource "aws_s3_bucket" "demo-bucket" {
  bucket = "demo-bucket-098cdeea4657a332"
}

resource "aws_s3_object" "bucket-data" {
    bucket = aws_s3_bucket.demo-bucket.bucket
    source = "./myfile.txt"
    key = "mydata.txt"

}


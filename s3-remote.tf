terraform {
  backend "s3" {
    bucket = "remote.tfstate"
    key    = "remote.tfstate"
    region = "us-east-2"
  }
}
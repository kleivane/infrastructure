terraform {
  backend "s3" {
    bucket = "tf-immutable-infrastructure-remote-state-storage"
    key    = "infrastructure-tf.state"
    region = "eu-north-1"
  }
}

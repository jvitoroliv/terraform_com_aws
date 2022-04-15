data "terraform_remote_state" "server" {
  backend = "s3"

  config = {
    bucket = "tfstate-496276046265"
    key    = "dev/01-usando-remote-state/terraform.tfstate"
    region = "us-east-1"
  }
}

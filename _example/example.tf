provider "aws" {
  region = "us-east-1"
}

module "lightsail" {
  source               = "../"
  environment          = "test"
  name                 = "lightsail"
  label_order          = ["name", "environment"]
  public_key           = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPOY10vvCSARJp5vsUxcKSJKes9QW/yrEHcZwwpt8vRt roshan@roshan"
  use_default_key_pair = true
  instance_count       = 1
  user_data            = file("${path.module}/lightsail.sh")

  port_info = [
    {
      port     = 80
      protocol = "tcp"
      cidrs    = ["0.0.0.0/0"]
    },
    {
      port     = 22
      protocol = "tcp"
      cidrs    = ["0.0.0.0/0"]
    }
  ]
}
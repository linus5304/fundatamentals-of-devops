provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "web" {
  filter {
    name   = "state"
    values = ["available"]
  }
  most_recent = true
}

module "sample_app_1" {
  #   source = "../../modules/ec2-instance"
  source = "github.com/brikis98/devops-book//ch2/tofu/modules/ec2-instance"


  ami_id = data.aws_ami.web.id
  name   = "sample-app-tofu-1"
}

module "sample_app_2" {
  source = "../../modules/ec2-instance"

  ami_id = data.aws_ami.web.id
  name   = "sample-app-tofu-2"
}

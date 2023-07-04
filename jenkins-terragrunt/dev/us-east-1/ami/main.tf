data "aws_ami" "ubuntu" {

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20200430"]
  }
}

output "id" {
  value = data.aws_ami.ubuntu.id
}

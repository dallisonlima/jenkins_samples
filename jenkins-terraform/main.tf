module "ec2-module" {
  source       = "./ec2-module"
  ami          = "ami-090fa75af13c156b4"
  instancetype = "t2.micro"
  environment = "dev"
}
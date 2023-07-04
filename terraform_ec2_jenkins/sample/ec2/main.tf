module "sample" {
  source = "../../modules/ec2"

  region = var.region

  ami                         = var.ami
  # vpc_security_group_ids      = var.vpc_security_group_ids
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  iam_instance_profile        = var.iam_instance_profile
  user_data_replace_on_change = var.user_data_replace_on_change

  root_block_device = var.root_block_device

  metadata_options = var.metadata_options

  use_user_data       = var.use_user_data
  user_data_file_path = var.user_data_file_path

  tags = var.tags
}
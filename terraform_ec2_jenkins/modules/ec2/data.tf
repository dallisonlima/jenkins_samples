# data "aws_ami" "custom_ami" {
#   count = var.custom_ami_name != "" ? 1 : 0

#   filter {
#     name   = "name"
#     values = [var.custom_ami_name]
#   }

#   filter {
#     name   = "state"
#     values = ["available"]
#   }

#   owners = ["self"]

#   most_recent = true
# }
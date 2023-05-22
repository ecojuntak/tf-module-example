# userdata custom
data "template_file" "userdata" {
  template = file("${path.module}/userdata.tpl")
}

# pass info to ec2 module
module "instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name                        = var.name
  instance_type               = var.instance_type
  vpc_security_group_ids      = var.vpc_security_group_ids
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  user_data                   = data.template_file.userdata.rendered
  user_data_replace_on_change = false
  associate_public_ip_address = var.associate_public_ip_address
}


terraform {
  backend "local" {}
}

module "honeypot" {
  source = "git::https://github.com/ecojuntak/tf-module-example?ref=v1.1.0"

  name                   = "abc-service"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-abcde12345"
  vpc_security_group_ids = ["sg-abcde12345"]
  key_name               = "supersecret"

}

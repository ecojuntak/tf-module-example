variable "name" {
  description = "name"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "VPC security group ids where the instance belongs to"
  type        = list(string)
}

variable "subnet_id" {
  description = "Subnet ID where instance belongs to"
  type        = string
}

variable "instance_type" {
  description = "AWS instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair to access the instance"
  type        = string
}

variable "associate_public_ip_address" {
  description = "A flag to mark whether the instance will have public IP address"
  type        = bool
  default     = false
}
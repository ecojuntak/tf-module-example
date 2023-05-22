output "public_ipv4" {
  description = "Public IPv4 of the instance"
  value       = module.instance.public_ip
}
output "instance_ids" {
  description = "The IDs of the created instances"
  value       = aws_instance.ecc[*].id
}

output "instance_public_ips" {
  description = "The public IP addresses of the created instances"
  value       = aws_instance.ecc[*].public_ip
}

output "instance_private_ips" {
  description = "The private IP addresses of the created instances"
  value       = aws_instance.ecc[*].private_ip
}
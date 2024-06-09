output "instance_id" {
  description = "The id of instance"
  value = aws_instance.myec2.id
}

output "public_ip" {
  description = "The public ip of instance"
  value = aws_instance.myec2.public_ip
}
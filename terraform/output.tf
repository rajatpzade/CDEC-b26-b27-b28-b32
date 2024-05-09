output "instance_ip_addr" {
  value = aws_instance.web.private_ip
}

output "instance_public_ip_addr" {
  value = aws_instance.web.public_ip
}

output "aws_route_table_id" {
  value = aws_route_table.example.id
}
output "instance_id" {
  value = aws_instance.web.id
}

output "aws_iam_user" {
  value = aws_iam_user.lb.id
}



# This is the TODO output you are meant to write.
output "alb_dns" {
  value = "http://${aws_lb.web.dns_name}"
}

output "subnet_ids" {
  value = { for az, s in aws_subnet.public : az => s.id }
}

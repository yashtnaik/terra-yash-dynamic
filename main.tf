resource "aws_security_group" "yash-sg-dynamic" {
    name = var.SG-name
    vpc_id = var.VPC-ID

    tags = {
        Name = "allow_http_traffoc"
  }
  
}
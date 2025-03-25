resource "aws_security_group" "yash-sg-dynamic" {
    name = var.SG-name
    vpc_id = var.VPC-ID

    tags = {
        Name = "Yash-Naik-SG-Terra"
    }

    dynamic "ingress" {
        for_each = var.ingress-rules
        content {
          from_port = ingress.value["from_port"]
          to_port = ingress.value["to_port"]
          protocol = ingress.value["protocol"]
          cidr_blocks = ingress.value["cidr_blocks"]
        }
    }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
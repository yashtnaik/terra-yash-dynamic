ingress-rules = [ 
  { from_port = 8080, to_port = 8080, protocol = "tcp", cidr_blocks = [ "0.0.0.0/0" ]},
  { from_port = 80, to_port = 80, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"]},
  { from_port = 443, to_port = 443, protocol = "tcp", cidr_blocks = [ "0.0.0.0/0" ]} ]

  SG-name = "yashtnaik-test-sg1"

  VPC-ID = "vpc-0be402d855d437f27"
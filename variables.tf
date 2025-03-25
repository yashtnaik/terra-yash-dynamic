variable "ingress-rules" {
    type = list(object({
      from_port = number
      to_port   = number
      protocol = string
      cidr_blocks = list(string)
    }))
  
}

variable "SG-name" {
    type = string  
}

variable "VPC-ID" {
    type = string
  
}
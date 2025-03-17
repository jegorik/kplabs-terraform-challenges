# Below ingress allows HTTPS  from DEV VPC
resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  ip_protocol       = var.sg_ip_protocol
  security_group_id = aws_security_group.security_group_payment_app.id
  cidr_ipv4         = var.sg_ipv4_cidr
  from_port         = var.sg_https_ports
  to_port           = var.sg_https_ports
  tags = {
    Name = "allow-https-ingress from DEV VPC",
  }
}

# Below ingress allows APIs access from DEV VPC
resource "aws_vpc_security_group_ingress_rule" "api_access_dev" {
  ip_protocol       = var.sg_ip_protocol
  security_group_id = aws_security_group.security_group_payment_app.id
  cidr_ipv4         = var.sg_ipv4_cidr
  from_port         = var.sg_api_ports_dev
  to_port           = var.sg_api_ports_dev
  tags = {
    Name = "allow-api-ingress from DEV VPC",
  }
}

locals {
  aws_eip = "${aws_eip.example.public_ip}/32"
}
# Below ingress allows APIs access from Prod App Public IP.
resource "aws_vpc_security_group_ingress_rule" "api_access_public" {
  ip_protocol       = var.sg_ip_protocol
  security_group_id = aws_security_group.security_group_payment_app.id
  cidr_ipv4         = local.aws_eip
  from_port         = var.sg_api_ports_public
  to_port           = var.sg_api_ports_public
  tags = {
    Name = "allow-api-ingress from Prod App Public IP",
  }
}

resource "aws_vpc_security_group_egress_rule" "splunk" {
  ip_protocol       = var.sg_ip_protocol
  security_group_id = aws_security_group.security_group_payment_app.id
  cidr_ipv4         = var.splunk_ipv4_cidr
  from_port         = var.splunk
  to_port           = var.splunk
  tags = {
    Name = "allow-splunk-egress",
  }
}
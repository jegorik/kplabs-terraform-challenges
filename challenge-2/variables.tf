variable "splunk" {
  default     = 8088
  description = "Splunk ports"
  type        = number
}

variable "aws_region" {
  default     = "eu-central-1"
  description = "AWS region"
  type        = string
}

variable "sg_ip_protocol" {
  default     = "tcp"
  description = "Protocol for the security group"
  type        = string
}

variable "sg_ipv4_cidr" {
  default     = "172.31.0.0/16"
  description = "IPv4 CIDR block for the security group"
  type        = string
}

variable "sg_https_ports" {
  default     = 433
  description = "HTTPS port for the security group"
  type        = number
}

variable "sg_api_ports_dev" {
  default     = 8080
  description = "APIs dev port for the security group"
  type        = number
}

variable "sg_api_ports_public" {
  default     = 8443
  description = "APIs public port for the security group"
  type        = number
}

variable "splunk_ipv4_cidr" {
  default     = "0.0.0.0/0"
  description = "IPv4 CIDR block for Splunk"
  type        = string
}
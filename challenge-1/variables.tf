<<<<<<< HEAD
variable "aws_region" {
  type = string
  description = "AWS Region"
  default = "us-west-1"
=======
variable "instance_type" {
  type        = string                     # The type of the variable, in this case a string
  default     = "t2.micro"                 # Default value for the variable
  description = "The type of EC2 instance" # Description of what this variable represents
>>>>>>> 989d4df218a8d7edfa96bf47a87cfbd109943b69
}
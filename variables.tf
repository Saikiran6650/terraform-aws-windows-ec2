variable "key_name" {
  description = "The name of an existing AWS EC2 Key Pair to allow RDP access"
  type        = string
  default     = "new-key-pair"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "ami_id" {
  description = "The Windows Server AMI to use"
  type        = string
  # Replace with the appropriate Windows Server AMI for your region
  default     = "ami-0a0ebee827a585d06"
}

variable "subnet_id" {
  description = "The subnet ID where the Windows EC2 instance will be deployed"
  type        = string
}
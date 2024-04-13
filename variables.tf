variable "profile" {
    type        = string
    description = "AWS profile"
}

variable "name" {
    type        = string
    description = "Name of the instance"
}

variable "az" {
    type        = string
    description = "Availability zone"
#     default     = "us-east-1a"
}

variable "region" {
    type        = string
    description = "AWS region"
    default     = "us-east-1"
}

variable "vpc_id" {
    type        = string
    description = "AWS VPC ID"
}

variable "architecture" {
    type        = string
    description = "AWS instance architecture, x86_64 or arm64"
    default     = "x86_64"
}

variable "instance_type" {
    type        = string
    description = "AWS instance type"
    default     = "t3.micro"
}

variable "volume_size" {
    type        = number
    description = "AWS volume size"
    default     = 10
}
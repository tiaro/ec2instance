data "aws_ami" "instance" {
    most_recent = true
    owners      = ["amazon"]

    filter {
        name   = "name"
        values = ["al2023-ami-2023*"]
    }

    filter {
        name   = "architecture"
        values = [var.architecture]  # AWS instance architecture, x86_64 or arm64
    }
}

data "aws_subnet" "public" {
    vpc_id            = var.vpc_id
    availability_zone = var.az
    default_for_az    = true
}

data "aws_ebs_default_kms_key" "current" {}

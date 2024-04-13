resource "aws_instance" "main" {
    ami                         = data.aws_ami.instance.id
    instance_type               = var.instance_type
    associate_public_ip_address = true
    key_name                    = "doz-useast1"
    subnet_id                   = data.aws_subnet.public.id
    user_data                   = file("scripts/a.sh")

    root_block_device {
        volume_size           = var.volume_size
        encrypted             = true
        delete_on_termination = true
        volume_type           = "gp3"
        kms_key_id            = data.aws_ebs_default_kms_key.current.key_arn
        tags = {
            Name = var.name
        }
    }

    tags = {
        Name = var.name
    }
}

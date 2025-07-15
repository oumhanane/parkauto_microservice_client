resource "aws_key_pair" "bastion_key" {
    key_name   = var.ec2_key_name
    public_key = file("~/.ssh/id_rsa.pub") # À adapter si ta clé est ailleurs
}

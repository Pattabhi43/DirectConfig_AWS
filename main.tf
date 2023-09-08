# resource "aws_key_pair" "Bishops" {
#     key_name = "Bishops"
#     public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBecJi0UW0CCXSg3wnh1GcMnELueDGZmJO3ZKf8Ub4VhpuZvaQD64w/yOyRmiKPHVQxkl0TDYA9Cn+LW0A6bnAuMYvwnJAzywdUMobs4Zyxn+4STMnQLFnwVTXU4aA3MtCB1AFID8tFQYdoah9QnL2NTXuQKI/vRb4HUqDVXtZoB+58oWKu3J1+S178HjKMgJ3vp4VJ32vXaaucgwMdCG5feVErwgchzLsSwixC+mxXBkmAt2a2gFhyQIMuulm63Twyi2IqulD1mNvLFlWANkEBIDnYz+8M3OoFNW9/xUN2kA+CuXlGCgwdTOvYXBdaTcUNyrrL50Och8SYsaHNQej ec2-user@ip-172-31-42-166.ec2.internal"
# }

data "aws_iam_instance_profile" "Uni" {
  name = "Uni"
}

data "aws_key_pair" "Bishops" {
  key_name = "Bishops"
}

resource "aws_instance" "Bishops" {
  instance_type = local.instance_type
  ami = var.redhat_ami
  key_name = data.aws_key_pair.Bishops.key_name
  iam_instance_profile = data.aws_iam_instance_profile.Uni.name
  tags = local.common_tags
}
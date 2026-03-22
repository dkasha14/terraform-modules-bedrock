resource "aws_instance" "myserver" {
  ami                    = "ami-0ec10929233384c7f"
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.vpcsgid]
  subnet_id              = var.subnetid
  key_name               = var.keyname

  tags = {
    Name = var.myserver_name
  }
}



# resource "aws_instance" "myserver" {
#   ami           = "ami-0ec10929233384c7f"
#   instance_type = "${var.instance_type}"
#   vpc_security_group_ids = ["${var.vpcsgid}"]
#   subnet_id = "${var.subnetid}"
#   key_name = "${var.keyname}"
#     tags {
#         Name = "${var.myserver_name}"
#     }

# }

variable "security_group_id" {
  default = "sg-0c1712024d80757cd"  
}


data "aws_security_group" "selected" {
  id = var.security_group_id
}

resource "aws_instance" "web-server" {
   ami = "ami-0ffd774e02309201f"
   instance_type = "t2.micro"
   key_name = "Archu-acc"
   #subnet_id =  "subnet-075a0d8e6c1ce3968"
   #availability_zone = "eu-west-2b"  
   vpc_security_group_ids = [data.aws_security_group.selected.id]

   tags = {
       Name = "ec2-terra-instance"
   }
} 

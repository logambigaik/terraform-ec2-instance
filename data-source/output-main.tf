locals {
  # Ids for multiple sets of EC2 instances, merged together
  instance_ids = concat(aws_instance.web-server.*.id, aws_instance.web-server.*.public_ip)
  security_group = concat(aws_instance.web-server.*.security_groups,aws_instance.web-server.*.vpc_security_group_ids)
}

output "instance_security_group_name_and_id" {
  #value  = aws_instance.web-server.vpc_security_group_ids
  value = local.security_group
}

output "instance_id" {
  value  =  local.instance_ids

}




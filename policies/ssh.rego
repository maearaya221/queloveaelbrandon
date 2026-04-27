package terraform.security

deny[msg] {
  input.resource_type == "aws_security_group_rule"
  input.type == "ingress"
  input.from_port == 22
  input.to_port == 22
  input.cidr_blocks[_] == "0.0.0.0/0"

  msg = "ERROR: SSH abierto a todo internet (0.0.0.0/0)"
}

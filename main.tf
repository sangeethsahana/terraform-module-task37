resource "aws_db_instance" "default" {
  availability_zone    = var.availability_zone
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.name
  username             = var.username
  password             = var.password
  storage_encrypted    = var.storage_encrypted
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = var.tags
  }
}

output "end_point" {
  value       =  aws_db_instance.default.endpoint
}

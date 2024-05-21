resource "aws_db_instance" "database" {
  identifier           = "test-db"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0.33"
  instance_class       = "db.t2.micro"
  db_name              = "demodb"
  username             = "test-assignment"
  port                 = "3306"
  parameter_group_name = aws_db_parameter_group.dbparameters.name
  iam_database_authentication_enabled = true
  backup_retention_period   = 7

  vpc_security_group_ids = ["sg-34245678"]
  create_db_subnet_group = true
  subnet_ids             = ["subnet-11567832", "subnet-32654309"]
}

  tags = {
    Owner       = "test"
    Environment = "dev"
  }



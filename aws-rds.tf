provider "aws" {
  region = "us-west-2"  # Specify your AWS region
}

# Create an RDS instance
resource "aws_db_instance" "default" {
  allocated_storage    = 20                       # Define the storage size (in GB)
  storage_type         = "gp2"                    # Define the storage type
  engine               = "mysql"                  # Specify the database engine
  engine_version       = "5.7"                    # Specify the engine version
  instance_class       = "db.t2.micro"            # Specify the instance class
  name                 = "mydb"                   # Set the DB name
  username             = "user"                   # Set the DB username
  password             = "mypassword"             # Set the DB password
  parameter_group_name = "default.mysql5.7"       # Choose the parameter group
}

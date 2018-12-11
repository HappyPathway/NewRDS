//--------------------------------------------------------------------
// Variables
variable "rds_allow_major_version_upgrade" {}
variable "rds_port" {}
variable "rds_username" {}

//--------------------------------------------------------------------
// Modules
module "rds" {
  source  = "app.terraform.io/AWSDemoDarnoldTFE/rds/aws"
  version = "1.1.0"

  allocated_storage = "blah"
  allow_major_version_upgrade = "${var.rds_allow_major_version_upgrade}"
  backup_window = "blah"
  engine = "blah"
  engine_version = "blah"
  identifier = "blah"
  instance_class = "blah"
  maintenance_window = "blah"
  password = "blah"
  port = "${var.rds_port}"
  username = "${var.rds_username}"
}

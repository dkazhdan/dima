variable instance_name {
}


variable project {
}

variable network {
}

variable backup_region {
  default = "us-central1"
}
variable region {
  default = "us-east1"
}

# database instance settings
variable db_version {
  default = "POSTGRES_9_6"
}
variable db_tier {
  default = "db-f1-micro"
}
variable db_activation_policy {
  default = "ALWAYS"
}
variable db_disk_autoresize {
  default = true
}
variable db_disk_size {
  default = 10
}
variable db_disk_type {
  default = "PD_SSD"
}
variable db_pricing_plan {
  default = "PER_USE"
}
variable db_instance_access_cidr {
  default = "0.0.0.0/0"
}
# database settings
variable db_name_devops {
}


variable db_name_server {
}




variable db_charset {
  description = "The charset for the default database"
  default     = ""
}
variable db_collation {
  default = ""
}
# user settings
variable db_user_name {
}
variable db_user_host {
  description = "The host for the default user"
  default     = "%"
}
variable db_user_password {
}

variable "kong-namespace" {
  type    = string
  default = "kong"
}
variable "monitoring-namespace" {
  type    = string
  default = "prometheus"
}
####################################
variable instance_name {
  default = "kongprod"
}


variable project {
  default = "pr-ca-merch"
}

variable network {
  default = "camerch-network"
}

variable region {
  default = "us-east1"
}

# database settings
variable db_name_server {
  description = "Name of the kong database to create"
  default     = "kong-server"
}

variable db_name_devops {
  description = "Name of the kong database to create"
  default     = "kong-devops"
}



variable db_collation {
  default = ""
}
# user settings
variable db_user_name {
  description = "The name of the default user"
  default     = "kong"
}
variable db_user_password {
  default = "Newq199"
}

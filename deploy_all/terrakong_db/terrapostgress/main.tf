resource "google_sql_database_instance" "postgresql" {
  name             = var.instance_name
  project          = var.project
  region           = var.region
  database_version = var.db_version

  settings {
    tier = var.db_tier
    #    activation_policy = var.db_activation_policy
    #    disk_autoresize = var.db_disk_autoresize
    #    disk_size = var.db_disk_size
    #    disk_type = var.db_disk_type
    #    pricing_plan = var.db_pricing_plan


    #    maintenance_window {
    #      day  = "7"  # sunday
    #      hour = "3" # 3am
    #    }

       backup_configuration {
          binary_log_enabled = true
          enabled = true
          start_time = "00:00"
        }

    ip_configuration {
      ipv4_enabled    = "false"
      private_network = data.google_compute_network.ca-merch-network.id
      #  authorized_networks {
      #    value = var.db_instance_access_cidr
      #  }
    }
  }


}





data "google_compute_network" "ca-merch-network" {
  project = var.project 
  name    = var.network
}


# create kong_server database
resource "google_sql_database" "postgresql_db_server" {
  name      = var.db_name_server
  project   = var.project
  instance  = google_sql_database_instance.postgresql.name
  charset   = var.db_charset
  collation = var.db_collation
  depends_on = [ google_sql_database_instance.postgresql ]
}


# create kong_devops database
resource "google_sql_database" "postgresql_db_devops" {
  name      = var.db_name_devops
  project   = var.project
  instance  = google_sql_database_instance.postgresql.name
  charset   = var.db_charset
  collation = var.db_collation
  depends_on = [ google_sql_database_instance.postgresql , google_sql_user.postgresql_user]
}




resource "google_sql_user" "postgresql_user" {
  name       = var.db_user_name
  project    = var.project
  instance   = google_sql_database_instance.postgresql.name
  password   = var.db_user_password
  depends_on = [google_sql_database_instance.postgresql]
}



output "instance_first_ip_address" {
  value       = google_sql_database_instance.postgresql.first_ip_address
  description = "The first IPv4 address of the addresses assigned."
}

output "db_id" {
value = google_sql_database.postgresql_db_server.id
}

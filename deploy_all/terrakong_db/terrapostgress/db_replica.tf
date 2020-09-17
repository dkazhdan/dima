resource "google_sql_database_instance" "postgresql_replica" {
  name             = "${var.instance_name}-repl"
  project          = var.project
  region           = var.backup_region
  database_version = var.db_version
  master_instance_name = google_sql_database_instance.postgresql.name
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

    #   backup_configuration {
    #      binary_log_enabled = true
    #      enabled = true
    #      start_time = "00:00"
    #    }

    ip_configuration {
      ipv4_enabled    = "false"
      private_network = data.google_compute_network.ca-merch-network.id
    }
  }
depends_on = [google_sql_database_instance.postgresql]
          
}       


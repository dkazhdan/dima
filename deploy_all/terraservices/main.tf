provider "kong" {
  kong_admin_uri = "http://127.0.0.1:8001"
}



resource "kong_service" "konga-service" {
  name            = "konga-devops"
  protocol        = "http"
  host            = var.konga-service-host
  port            = 80
  retries         = 5
  connect_timeout = 1000
  write_timeout   = 2000
  read_timeout    = 3000
}


resource "kong_route" "konga-route" {
  name          = "konga-route"
  protocols     = ["http", "https"]
  hosts         = formatlist("%s.${var.domain}", var.konga-route-host)
  strip_path    = true
  preserve_host = true
  service_id    = kong_service.konga-service.id
}





resource "kong_service" "konga-service-server" {
  name            = "konga-server"
  protocol        = "http"
  host            = var.konga-service-host-server
  port            = 80
  retries         = 5
  connect_timeout = 1000
  write_timeout   = 2000
  read_timeout    = 3000
}


resource "kong_route" "konga-route-server" {
  name          = "konga-route-server"
  protocols     = ["http", "https"]
  hosts         = formatlist("%s.${var.domain}", var.konga-route-host-server)
  strip_path    = true
  preserve_host = true
  service_id    = kong_service.konga-service-server.id
}














resource "kong_service" "grafana-service" {
  name            = "grafana"
  protocol        = "http"
  host            = var.grafana-service-host
  port            = 80
  retries         = 5
  connect_timeout = 1000
  write_timeout   = 2000
  read_timeout    = 3000
}


resource "kong_route" "grafana-route" {
  name          = "grafana-route"
  protocols     = ["http", "https"]
  hosts         = formatlist("%s.${var.domain}", var.grafana-route-host)
  strip_path    = true
  preserve_host = true
  service_id    = kong_service.grafana-service.id
}

resource "kong_certificate" "cert" {
  certificate = var.cert
  private_key = var.key
}

resource "kong_sni" "sni" {
  name           = "*.merch.homedepot.ca"
  certificate_id = kong_certificate.cert.id
}




resource "kong_service" "logserver-service" {
  name            = "logserver"
  protocol        = "http"
  host            = var.logserver-service-host
  port            = 8080
  retries         = 5
  connect_timeout = 1000
  write_timeout   = 2000
  read_timeout    = 3000
}


resource "kong_route" "logserver-route" {
  name          = "logserver-route"
  protocols     = ["http", "https"]
  hosts         = formatlist("%s.${var.domain}", var.logserver-route-host)
  strip_path    = true
  preserve_host = true
  service_id    = kong_service.logserver-service.id
}




resource "kong_service" "cm-service" {
  name            = "cm-manager"
  protocol        = "http"
  host            = var.cm-service-host
  port            = 80
  retries         = 5
  connect_timeout = 1000
  write_timeout   = 2000
  read_timeout    = 3000
}


resource "kong_route" "cm-route" {
  name          = "cm-route"
  protocols     = ["http", "https"]
  hosts         = formatlist("%s.${var.domain}", var.cm-route-host)
  strip_path    = true
  preserve_host = true
  service_id    = kong_service.cm-service.id
}




#resource "kong_plugin" "prefunction" {
#	name        = "prefunction"
#	enabled     = true
#	service_id = "${kong_service.cm-service.id}"
#	config_json = <<EOT
#	{


#          if kong.request.get_path() == "/" then kong.response.set_header("Location", "https://" .. kong.request.get_host() .. "/index.html" ) return kong.response.exit(302,"Redirect") end


#	}
#EOT
#}





resource "kong_service" "pgadmin-service" {
  name            = "pgadmin-service"
  protocol        = "http"
  host            = var.pgadmin-service-host
  port            = 80
  retries         = 5
  connect_timeout = 1000
  write_timeout   = 2000
  read_timeout    = 3000
}


resource "kong_route" "pgadmin-route" {
  name          = "pgadmin-route"
  protocols     = ["http", "https"]
  hosts         = formatlist("%s.${var.domain}", var.pgadmin-route-host)
  strip_path    = true
  preserve_host = true
  service_id    = kong_service.pgadmin-service.id
}


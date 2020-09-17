provider "kong" {
    kong_admin_uri = "http://127.0.0.1:8001"
}



resource "kong_service" "pricing-commons-service" {
	name     	= "pricing-commons-service"
	protocol 	= "http"
	host     	= var.pricing-commons-service 
        path            ="/pricing/v2"
	port     	= 80
	retries  	= 5
	connect_timeout = 1000
	write_timeout 	= 2000
	read_timeout  	= 3000
}


resource "kong_route" "pricing-service-v2-route" {
        name            = "pricing-service-v2-route"
	protocols 	    = [ "http", "https" ]
	hosts 		    =   formatlist("%s.${var.domain}", var.pricing-service-v2-route)
	strip_path 	    = true
	preserve_host 	= true
	service_id 	    = kong_service.pricing-commons-service.id
        paths               =[ "/pricing/v2" ]
}



resource "kong_service" "catalog-commons-service" {
	name     	= "catalog-commons-service"
	protocol 	= "http"
	host     	= var.catalog-commons-service 
        path            = "/catalog"
	port     	= 80
	retries  	= 5
	connect_timeout = 1000
	write_timeout 	= 2000
	read_timeout  	= 3000
}


resource "kong_route" "catalog-commons-route" {
        name            = "catalog-commons-route"
	protocols 	    = [ "http", "https" ]
	hosts 		    =  formatlist("%s.${var.domain}", var.catalog-commons-route)
	strip_path 	    = true
	preserve_host 	= false
	service_id 	    = kong_service.catalog-commons-service.id
        paths               = [ "/catalog" ]
}



resource "kong_service" "assortment-commons-service" {
	name     	= "assortment-commons-service"
	protocol 	= "http"
	host     	= var.assortment-commons-service
        path            = "/assortment"
	port     	= 80
	retries  	= 5
	connect_timeout = 1000
	write_timeout 	= 2000
	read_timeout  	= 3000
}


resource "kong_route" "assortment-commons-route" {
        name            = "assortment-commons-route"
	protocols 	    = [ "http", "https" ]
	hosts 		    =  formatlist("%s.${var.domain}", var.assortment-commons-route)
	strip_path 	    = true
	preserve_host 	= false
	service_id 	    = kong_service.assortment-commons-service.id
        paths               = [ "/assortment" ]
}

resource "kong_certificate" "cert" {
  certificate = var.cert
  private_key = var.key
}

resource "kong_sni" "sni" {
  name           = "*.merch.homedepot.ca"
  certificate_id = kong_certificate.cert.id
}


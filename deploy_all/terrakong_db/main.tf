
module "db" {
  source           = "./terrapostgress"
  instance_name    = var.instance_name
  project          = var.project
  network          = var.network
  db_user_name     = var.db_user_name
  db_name_server          = var.db_name_server
  db_name_devops          = var.db_name_devops
  db_user_password = var.db_user_password
}




resource "helm_release" "kong_server" {
  name       = "kong-server"
  repository = "https://charts.konghq.com"
  chart      = "kong"


values =  [

templatefile("values.tpl", {
    IP       = "${module.db.instance_first_ip_address}" ,
    USER     = var.db_user_name ,
    PASSWORD = var.db_user_password ,
    DB_NAME=var.db_name_server
    }
)
]


  namespace        = var.kong-namespace
  create_namespace = "true"
  depends_on       = [module.db.instance_first_ip_address, module.db.db_id ]

set {
name = "ingressController.installCRDs"
value  = "false"
  }
}


resource "helm_release" "kong_devops" {
  name       = "kong-devops"
  repository = "https://charts.konghq.com"
  chart      = "kong"


values =  [

templatefile("values.tpl", {
    IP       = "${module.db.instance_first_ip_address}" ,
    USER     = var.db_user_name ,
    PASSWORD = var.db_user_password ,
    DB_NAME=var.db_name_devops
    }
)
]


  namespace        = var.kong-namespace
  create_namespace = "true"
  depends_on       = [helm_release.kong_server]

set {
name = "ingressController.installCRDs"
value  = "false"
  }
}



resource "helm_release" "konga-devops" {
  name  = "konga-devops"
  chart = "./konga/charts/konga"


  namespace        = var.kong-namespace
  create_namespace = "true"


  depends_on = [
    null_resource.git-clone
  ]

}

resource "helm_release" "konga-server" {
  name  = "konga-server"
  chart = "./konga/charts/konga"


  namespace        = var.kong-namespace
  create_namespace = "true"


  depends_on = [
    null_resource.git-clone
  ]

}


resource "helm_release" "prometheus" {
  name = "prometheus"
  #  repository = "https://kubernetes-charts.storage.googleapis.com/" 
  chart = "stable/prometheus"



  values = [
    "${file("prometheus_values.yaml")}"
  ]



  namespace        = var.monitoring-namespace
  create_namespace = "true"

}


##Grafana
resource "helm_release" "grafana" {
  name = "grafana"
  #  repository = "https://kubernetes-charts.storage.googleapis.com/" 
  chart = "stable/grafana"



  values = [
    "${file("grafana_values.yaml")}"
  ]



  namespace        = var.monitoring-namespace
  create_namespace = "true"

  depends_on = [
    helm_release.prometheus
  ]

}




resource "null_resource" "git-clone" {

  triggers = {
    always_run = "${timestamp()}"
  }


  provisioner "local-exec" {
    command = "rm -fr konga && git clone https://github.com/pantsel/konga.git"
  }
}


resource "null_resource" "plugin-install" {



  provisioner "local-exec" {
    command = "kubectl apply -f plugin.yaml"
  }

  depends_on = [
    helm_release.kong_server
  ]
  triggers = {
    always_run = "${timestamp()}"
  }

}
#devops kong instance

#resource "helm_release" "kong-devops" {
#  name       = "kong-devops"
#  repository = "https://charts.konghq.com"
#  chart      = "kong"

#  values = [
#    "${file("values.yaml")}"
#  ]

#  namespace        = var.kong-namespace
#  create_namespace = "true"
#  depends_on = [
#    helm_release.kong
#  ]

#}

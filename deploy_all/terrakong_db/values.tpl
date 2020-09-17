readinessProbe:     # on the Admin API. By default, Prometheus
  httpGet:          # scrapes are HTTP and not HTTPS.
    scheme: HTTP    # Admin API should be on TLS in production.
livenessProbe:
  httpGet:
    scheme: HTTP
podAnnotations:
  prometheus.io/scrape: "true" # Ask Prometheus to scrape the
  prometheus.io/port: "9542"   # Kong pods for metrics

image:
  repository: kong
  tag: "2.1"

env:
  prefix: /kong_prefix/
  database: postgres
  pg_password: ${PASSWORD}
  pg_host: ${IP}
  pg_port: 5432
  pg_user: ${USER}
  pg_database: ${DB_NAME}
admin:
  enabled: true
  http:
    enabled: true
    servicePort: 8001
    containerPort: 8001
    useTLS: false
#postgresql:
#  enabled: false
#  postgresqlUsername: kong
#  postgresqlDatabase: kong
#  postgresqlPassword: password
#  service:
#    port: 5432
#  external:
#    host: 10.92.26.39
#    user: postgres
#    password: postgress
ingressController:
  enabled: true
  installCRDs: false


podAnnotations:
  prometheus.io/scrape: "true" # Ask Prometheus to scrape the
  prometheus.io/port: "9542"   # Kong pods for metrics


proxy:
  loadBalancerSourceRanges:
    - 10.0.0.0/8
    - 35.229.90.201/32
    - 104.196.103.83/32
    - 35.196.203.120/32
    - 98.6.11.8/29
    - 50.207.28.8/29
    - 199.243.161.16/29
    - 151.140.0.0/16
    - 165.130.0.0/16
    - 207.11.0.0/17
    - 50.238.253.152/29
    - 35.190.145.132/32
    - 35.227.78.180/32
    - 35.237.213.242/32
    - 52.223.45.193/32
    - 35.203.127.4/32
    - 99.79.13.8/32
    - 8.34.208.0/20
    - 8.35.192.0/21
    - 8.35.200.0/23
    - 23.236.48.0/20
    - 23.251.128.0/19
    - 34.64.0.0/11
    - 34.96.0.0/14
    - 34.100.0.0/16
    - 34.102.0.0/15
    - 34.104.0.0/14
    - 34.124.0.0/18
    - 34.124.64.0/20
    - 34.124.80.0/23
    - 34.124.84.0/22
    - 34.124.88.0/23
    - 34.124.92.0/22
    - 34.125.0.0/16
    - 35.184.0.0/14
    - 35.188.0.0/15
    - 35.190.0.0/17
    - 35.190.128.0/18
    - 35.190.192.0/19
    - 35.190.224.0/20
    - 35.190.240.0/22
    - 35.192.0.0/14
    - 35.196.0.0/15
    - 35.198.0.0/16
    - 35.199.0.0/17
    - 35.199.128.0/18
    - 35.200.0.0/13
    - 35.208.0.0/13
    - 35.216.0.0/15
    - 35.219.192.0/24
    - 35.220.0.0/14
    - 35.224.0.0/13
    - 35.232.0.0/15
    - 35.234.0.0/16
    - 35.235.0.0/17
    - 35.235.192.0/20
    - 35.235.216.0/21
    - 35.235.224.0/20
    - 35.236.0.0/14
    - 35.240.0.0/13
    - 104.154.0.0/15
    - 104.196.0.0/14
    - 107.167.160.0/19
    - 107.178.192.0/18
    - 108.59.80.0/20
    - 108.170.192.0/20
    - 108.170.208.0/21
    - 108.170.216.0/22
    - 108.170.220.0/23
    - 108.170.222.0/24
    - 130.211.4.0/22
    - 130.211.8.0/21
    - 130.211.16.0/20
    - 130.211.32.0/19
    - 162.222.72.0/21
    - 66.85.48.0/21
variable "domain" {
type = string
default = "qa-merch.homedepot.ca"
}


variable "konga-service-host" {
  type = string

  default="konga-devops.kong-qa-1.svc.cluster.local"

}


variable "konga-route-host" {
  type    = list(string)


  default=["konga-devops"]

}



variable "konga-service-host-server" {
  type = string

  default="konga-server.kong-qa-1.svc.cluster.local"

}


variable "konga-route-host-server" {
  type    = list(string)


  default=["konga-server"]

}




variable "grafana-service-host" {
  type = string

  default="grafana.prometheus-qa-1.svc.cluster.local"

}


variable "grafana-route-host" {
  type    = list(string)


  default=["grafana"]

}



variable "logserver-service-host" {
  type = string

  default="log-server.kong-qa-1.svc.cluster.local"

}


variable "logserver-route-host" {
  type    = list(string)


  default=["log-server"]

}



variable "cm-service-host" {
  type = string

  default="cm-manager.devops.svc.cluster.local"

}


variable "cm-route-host" {
  type    = list(string)


  default=["cm-manager"]

}


variable "pgadmin-service-host" {
  type = string

  default="pgadmin.devops.svc.cluster.local"

}


variable "pgadmin-route-host" {
  type    = list(string)


  default=["pgadmin"]

}


variable "pricing-commons-service" {
  type = string

  default="pricing-service-v2.pricing-commons.svc.cluster.local"

}


variable "pricing-service-v2-route" {
  type    = list(string)


  default=["api", "apidocs" ]

}

variable "catalog-commons-service" {
  type = string

  default="catalog-commons.catalog-commons.svc.cluster.local"

}


variable "catalog-commons-route" {
  type    = list(string)


  default=["apidocs", "api" ]

}


variable "assortment-commons-service" {
  type = string

  default="assortment-commons.assortment-commons.svc.cluster.local"

}


variable "assortment-commons-route" {
  type    = list(string)


  default=["apidocs", "api" ]

}




variable "cert" {
type = string

default = <<EOT
-----BEGIN CERTIFICATE-----
MIIHVTCCBj2gAwIBAgIQd44WnguXA25CGaocYjrhEzANBgkqhkiG9w0BAQsFADCB
ujELMAkGA1UEBhMCVVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xKDAmBgNVBAsT
H1NlZSB3d3cuZW50cnVzdC5uZXQvbGVnYWwtdGVybXMxOTA3BgNVBAsTMChjKSAy
MDEyIEVudHJ1c3QsIEluYy4gLSBmb3IgYXV0aG9yaXplZCB1c2Ugb25seTEuMCwG
A1UEAxMlRW50cnVzdCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSAtIEwxSzAeFw0y
MDA2MjYxNjUwMDRaFw0yMjA5MjUxNjUwMDNaMIGCMQswCQYDVQQGEwJVUzEQMA4G
A1UECBMHR2VvcmdpYTEQMA4GA1UEBxMHQXRsYW50YTEXMBUGA1UEChMOVGhlIEhv
bWUgRGVwb3QxFDASBgNVBAsTC0lUIFNlY3VyaXR5MSAwHgYDVQQDDBcqLnFwLW1l
cmNoLmhvbWVkZXBvdC5jYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
ANetUFW4xo1bi+WsN9jXMPKXkbrf2I3Zzms4U7mSgJkHZejixh17OXVt79kOZJkZ
P8bCkr+8jk83XIenn7y4cfhOemUVFr4L5l+K6aGANXeaSinMk6qbqww94z6Dm6x3
u+3GTAZPMvJyL7hv9K0VIp6ydC3de8I3kUY7KV2A04divyfzvVJzBxePagiDZAPb
bW4TX0Rg0sT6sIeXqiqZ9qbCTjISMZy5bA2rdiU3OXi/SbFwLT1vd9PKGkFRlCrF
Nwq1WoNJ4Y5aGKd4eSTJPPrPYp72MyarH+lwv/LSbWb0IZ8I/2CqeuRiSGcNn2Or
cj4iitaflxwQ4/v5+dcH+5ECAwEAAaOCA4swggOHMA4GA1UdDwEB/wQEAwIFoDAd
BgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUHAwIwDAYDVR0TAQH/BAIwADAdBgNV
HQ4EFgQUY7ixcxYZdSs3E8sEHM5fZ+hUGgAwHwYDVR0jBBgwFoAUgqJwdN28Uz/P
e9T3zX+nYMYKTL8waAYIKwYBBQUHAQEEXDBaMCMGCCsGAQUFBzABhhdodHRwOi8v
b2NzcC5lbnRydXN0Lm5ldDAzBggrBgEFBQcwAoYnaHR0cDovL2FpYS5lbnRydXN0
Lm5ldC9sMWstY2hhaW4yNTYuY2VyMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9j
cmwuZW50cnVzdC5uZXQvbGV2ZWwxay5jcmwwIgYDVR0RBBswGYIXKi5xcC1tZXJj
aC5ob21lZGVwb3QuY2EwTAYDVR0gBEUwQzA3BgpghkgBhvpsCgEFMCkwJwYIKwYB
BQUHAgEWG2h0dHBzOi8vd3d3LmVudHJ1c3QubmV0L3JwYTAIBgZngQwBAgIwggH1
BgorBgEEAdZ5AgQCBIIB5QSCAeEB3wB3AFWB1MIWkDYBSuoLm1c8U/DA5Dh4cCUI
Fy+jqh0HE9MMAAABcvGJRqMAAAQDAEgwRgIhAM0V65WEZymogVAK375f8MxAYzjh
j9HL3B1N2h+n1aNuAiEAuXXpnNroxZdefkG84IEbCuh+BfFZBgfwUzksSPYFQuQA
dgBWFAaaL9fC7NP14b1Esj7HRna5vJkRXMDvlJhV1onQ3QAAAXLxiUbAAAAEAwBH
MEUCIBNKsRoD68aOckFdQW7V+dCA7+lNplj7Qa3yiO8idH4aAiEAw0xMDfUOc+v5
TR2DVJ1mUwc/09wU2a4srdlHSVUGMDYAdABRo7D1/QF5nFZtuDd4jwykeswbJ8v3
nohCmg3+1IsF5QAAAXLxiUbJAAAEAwBFMEMCHyPEwHcdKBR9bLbHufVF2oHsuKnT
DtLzLtH14ahTFVECIARA73WXVW7la9BaHUbUNgKnIHH6R1OjpG+5tPwrO3e/AHYA
RqVV63X6kSAwtaKJafTzfREsQXS+/Um4havy/HD+bUcAAAFy8YlHDAAABAMARzBF
AiEApt1RqYTbjAgX/B31LXIxfdvfYUZgZFbFF4Jbmb4NG4UCICbKHaJV4x2AZOb4
c8lgopovHuh990sYkf7ppgCFMPkFMA0GCSqGSIb3DQEBCwUAA4IBAQCqRNZmzp3e
Rrllr3e9WLdHS1gWkjQq1Ceg0Cc2tyviVNALHSO69B1sqGquxGBvMM57H5wWWxkV
E6dJxUPohjxdW7Xr+iov5XKdGiufZDedNRYSRW/+vwwyPj298rJodPnPOa1rCkbp
3AAPmPUgMU1C0Gf3u2XzaJAyAXPrx0osUYJe4Cud+FrqDn2c9Od6SaK65y5UGPtB
OjD0+dHFnlXE0+qPThp45+UTh6NbQqQbqiPytH6A7fKEcusMAUpHyC9PuTH+rsqC
wPW/Ifr0Yw2dn2hem2HRzE6fMVDNrhf/t24/oHguTPVlR0fvpw600NFQRUWwdsT8
UTHrwLHEYVtJ
-----END CERTIFICATE-----
-----BEGIN CERTIFICATE-----
MIIFDjCCA/agAwIBAgIMDulMwwAAAABR03eFMA0GCSqGSIb3DQEBCwUAMIG+MQsw
CQYDVQQGEwJVUzEWMBQGA1UEChMNRW50cnVzdCwgSW5jLjEoMCYGA1UECxMfU2Vl
IHd3dy5lbnRydXN0Lm5ldC9sZWdhbC10ZXJtczE5MDcGA1UECxMwKGMpIDIwMDkg
RW50cnVzdCwgSW5jLiAtIGZvciBhdXRob3JpemVkIHVzZSBvbmx5MTIwMAYDVQQD
EylFbnRydXN0IFJvb3QgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgLSBHMjAeFw0x
NTEwMDUxOTEzNTZaFw0zMDEyMDUxOTQzNTZaMIG6MQswCQYDVQQGEwJVUzEWMBQG
A1UEChMNRW50cnVzdCwgSW5jLjEoMCYGA1UECxMfU2VlIHd3dy5lbnRydXN0Lm5l
dC9sZWdhbC10ZXJtczE5MDcGA1UECxMwKGMpIDIwMTIgRW50cnVzdCwgSW5jLiAt
IGZvciBhdXRob3JpemVkIHVzZSBvbmx5MS4wLAYDVQQDEyVFbnRydXN0IENlcnRp
ZmljYXRpb24gQXV0aG9yaXR5IC0gTDFLMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEA2j+W0E25L0Tn2zlem1DuXKVh2kFnUwmqAJqOV38pa9vH4SEkqjrQ
jUcj0u1yFvCRIdJdt7hLqIOPt5EyaM/OJZMssn2XyP7BtBe6CZ4DkJN7fEmDImiK
m95HwzGYei59QAvS7z7Tsoyqj0ip/wDoKVgG97aTWpRzJiatWA7lQrjV6nN5ZGhT
JbiEz5R6rgZFDKNrTdDGvuoYpDbwkrK6HIiPOlJ/915tgxyd8B/lw9bdpXiSPbBt
LOrJz5RBGXFEaLpHPATpXbo+8DX3Fbae8i4VHj9HyMg4p3NFXU2wO7GOFyk36t0F
ASK7lDYqjVs1/lMZLwhGwSqzGmIdTivZGwIDAQABo4IBDDCCAQgwDgYDVR0PAQH/
BAQDAgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwMwYIKwYBBQUHAQEEJzAlMCMGCCsG
AQUFBzABhhdodHRwOi8vb2NzcC5lbnRydXN0Lm5ldDAwBgNVHR8EKTAnMCWgI6Ah
hh9odHRwOi8vY3JsLmVudHJ1c3QubmV0L2cyY2EuY3JsMDsGA1UdIAQ0MDIwMAYE
VR0gADAoMCYGCCsGAQUFBwIBFhpodHRwOi8vd3d3LmVudHJ1c3QubmV0L3JwYTAd
BgNVHQ4EFgQUgqJwdN28Uz/Pe9T3zX+nYMYKTL8wHwYDVR0jBBgwFoAUanImetAe
733nO2lR1GyNn5ASZqswDQYJKoZIhvcNAQELBQADggEBADnVjpiDYcgsY9NwHRkw
y/YJrMxp1cncN0HyMg/vdMNY9ngnCTQIlZIv19+4o/0OgemknNM/TWgrFTEKFcxS
BJPok1DD2bHi4Wi3Ogl08TRYCj93mEC45mj/XeTIRsXsgdfJghhcg85x2Ly/rJkC
k9uUmITSnKa1/ly78EqvIazCP0kkZ9Yujs+szGQVGHLlbHfTUqi53Y2sAEo1GdRv
c6N172tkw+CNgxKhiucOhk3YtCAbvmqljEtoZuMrx1gL+1YQ1JH7HdMxWBCMRON1
exCdtTix9qrKgWRs6PLigVWXUX/hwidQosk8WwBD9lu51aX8/wdQQGcHsFXwt35u
Lcw=
-----END CERTIFICATE-----
-----BEGIN CERTIFICATE-----
MIIE/zCCA+egAwIBAgIEUdNARDANBgkqhkiG9w0BAQsFADCBsDELMAkGA1UEBhMC
VVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xOTA3BgNVBAsTMHd3dy5lbnRydXN0
Lm5ldC9DUFMgaXMgaW5jb3Jwb3JhdGVkIGJ5IHJlZmVyZW5jZTEfMB0GA1UECxMW
KGMpIDIwMDYgRW50cnVzdCwgSW5jLjEtMCsGA1UEAxMkRW50cnVzdCBSb290IENl
cnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTE0MDkyMjE3MTQ1N1oXDTI0MDkyMzAx
MzE1M1owgb4xCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1FbnRydXN0LCBJbmMuMSgw
JgYDVQQLEx9TZWUgd3d3LmVudHJ1c3QubmV0L2xlZ2FsLXRlcm1zMTkwNwYDVQQL
EzAoYykgMjAwOSBFbnRydXN0LCBJbmMuIC0gZm9yIGF1dGhvcml6ZWQgdXNlIG9u
bHkxMjAwBgNVBAMTKUVudHJ1c3QgUm9vdCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0
eSAtIEcyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuoS2ctueDGvi
mekwAad26jK4lUEaydphTlhyz/72gnm/c2EGCqUn2LNf00VOHHLWTjLycooP94MZ
0GqAgABFHrDH55q/ElcnHKNoLwqHvWprDl5l8xx31dSFjXAhtLMy54ui1YY5ArG4
0kfO5MlJxDun3vtUfVe+8OhuwnmyOgtV4lCYFjITXC94VsHClLPyWuQnmp8k18bs
0JslguPMwsRFxYyXegZrKhGfqQpuSDtv29QRGUL3jwe/9VNfnD70FyzmaaxOMkxi
d+q36OW7NLwZi66cUee3frVTsTMi5W3PcDwa+uKbZ7aD9I2lr2JMTeBYrGQ0EgP4
to2UYySkcQIDAQABo4IBDzCCAQswDgYDVR0PAQH/BAQDAgEGMBIGA1UdEwEB/wQI
MAYBAf8CAQEwMwYIKwYBBQUHAQEEJzAlMCMGCCsGAQUFBzABhhdodHRwOi8vb2Nz
cC5lbnRydXN0Lm5ldDAzBgNVHR8ELDAqMCigJqAkhiJodHRwOi8vY3JsLmVudHJ1
c3QubmV0L3Jvb3RjYTEuY3JsMDsGA1UdIAQ0MDIwMAYEVR0gADAoMCYGCCsGAQUF
BwIBFhpodHRwOi8vd3d3LmVudHJ1c3QubmV0L0NQUzAdBgNVHQ4EFgQUanImetAe
733nO2lR1GyNn5ASZqswHwYDVR0jBBgwFoAUaJDkZ6SmU4DHhmak8fdLQ/uEvW0w
DQYJKoZIhvcNAQELBQADggEBAGkzg/woem99751V68U+ep11s8zDODbZNKIoaBjq
HmnTvefQd9q4AINOSs9v0fHBIj905PeYSZ6btp7h25h3LVY0sag82f3Azce/BQPU
AsXx5cbaCKUTx2IjEdFhMB1ghEXveajGJpOkt800uGnFE/aRs8lFc3a2kvZ2Clvh
A0e36SlMkTIjN0qcNdh4/R0f5IOJJICtt/nP5F2l1HHEhVtwH9s/HAHrGkUmMRTM
Zb9n3srMM2XlQZHXN75BGpad5oqXnafOrE6aPb0BoGrZTyIAi0TVaWJ7LuvMuueS
fWlnPfy4fN5Bh9Bp6roKGHoalUOzeXEodm2h+1dK7E3IDhA=
-----END CERTIFICATE-----
EOT
}


variable  "key" {
type=string
default = <<EOD
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDXrVBVuMaNW4vl
rDfY1zDyl5G639iN2c5rOFO5koCZB2Xo4sYdezl1be/ZDmSZGT/GwpK/vI5PN1yH
p5+8uHH4TnplFRa+C+ZfiumhgDV3mkopzJOqm6sMPeM+g5usd7vtxkwGTzLyci+4
b/StFSKesnQt3XvCN5FGOyldgNOHYr8n871ScwcXj2oIg2QD221uE19EYNLE+rCH
l6oqmfamwk4yEjGcuWwNq3YlNzl4v0mxcC09b3fTyhpBUZQqxTcKtVqDSeGOWhin
eHkkyTz6z2Ke9jMmqx/pcL/y0m1m9CGfCP9gqnrkYkhnDZ9jq3I+IorWn5ccEOP7
+fnXB/uRAgMBAAECggEBAMx/bLia5siJkPBIhvt3rtWWmXsTXAXEC1Dmq5w9KOnw
ddSHkUnK2QRbJRwt5Xy00B/pxbM/WcAKwhVt/qu2R3olDzBg+ptgNSNKV5PmOMwa
408WxrzxtRF6bMmNiEHTlcEyUEt7NNdlJZI/tUOX0qeelUIXy4yvm3N4DRS3Xdnz
LNchnFlfof9Y1pnbR5YkG0SZAlP99WAFM1NJq7tOobai8WS8pMF7DcYUw7I5c8F2
XX1eYxC8xdjBmewJEmQnf3rxIChnycWMqtX6iDu/guKwp50a/EeQQe5mkCJp2bfj
XGqGnDxcRojRyaXTxwhIExGDxdLebBhHZ2jkjhbIlDECgYEA+cVuUQ4RMPJrLo4M
Fvw4vX0W4NSvBmUQeALXigfO5RZRG80wq+67y1I1AWgvRe1CrMYateta9N4qT4Fi
kI0jhE9SrpAgrFzrsY+roat0d4CUrEg3ljreE4272UM/5+Sp/Ld/S29qenOirTtU
fqcIhWvND+SMILZPg0jtyBXKJmMCgYEA3Q44rse8V2CA3mksALXJNYytkHXKYRa4
sBZrhtyIq7xbFP87B47Hy1eS00xxPlSnFV1ijG8IxJa1OFPrIa9KDF4DbV+ClJm7
lp+uACJwWKRAops4YvARGZzg9I6bOMrbu/FDtJ9MWVb1JwdqCsD1JB5KPo5T/4pX
NJFQwDfDbnsCgYEAkvJJxdwt1ws4bcpaaId5ZloaxKm8U1nQR5r8bhPL8FGh5GZi
9TRePe+eibZe4ZgF+xoOCuttttSiNeZcM8kllSkJ7vOSlXWRoQRyqInz2n7GeVl/
gp4dm4ludBMxnN+V9r2KYbop/eLcWWinfGAPDlfu7CO9IV3BB+83Hdlb9hsCgYBJ
a3rKGk7k2omS1W2nArnEjmfrTiQcoRZQbfHixgaiu5mo3Ki3duXHFNwQUBhgsm8Y
On8L06ke2ktwXPcAph67AtKylgFh57mVao25P7b+yfcpytIskj2rux5AO8k0ULQw
tQ5exHXwSmB8SQsgbTw+dc0E//LIMiOKsyUV4q+HVwKBgEPpEtLkHwK5QY2ovALU
qlGLLh6/d0hbXolir+T5YT+509lwbRTMCyi6UlQs/oZWWTl+8wh8NKqWb2qM6BDh
VaV5K/v1aE70Xxgh2v8TNKRp/D9jTNghPnZTHOK2k+Ue7Us7eHPik+49vmqi9zC+
aPCb65mqASWiSq4gbDcO1O3K
-----END PRIVATE KEY-----
EOD
}


variable "sni" {
type=string
default=<<EOF
*.qa-merch.homedepot.ca
EOF
}
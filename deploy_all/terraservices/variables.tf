variable "domain" {
  type    = string
  default = "merch.homedepot.ca"
}


variable "konga-service-host" {
  type = string

  default = "konga-devops.kong.svc.cluster.local"

}


variable "konga-route-host" {
  type = list(string)


  default = ["kong-devops"]

}



variable "konga-service-host-server" {
  type = string

  default = "konga-server.kong.svc.cluster.local"

}


variable "konga-route-host-server" {
  type = list(string)


  default = ["kong"]

}




variable "grafana-service-host" {
  type = string

  default = "grafana.prometheus.svc.cluster.local"

}


variable "grafana-route-host" {
  type = list(string)


  default = ["grafana"]

}



variable "logserver-service-host" {
  type = string

  default = "log-server.kong.svc.cluster.local"

}


variable "logserver-route-host" {
  type = list(string)


  default = ["log-server"]

}



variable "cm-service-host" {
  type = string

  default = "cm-manager.devops.svc.cluster.local"

}


variable "cm-route-host" {
  type = list(string)


  default = ["cm-manager"]

}


variable "pgadmin-service-host" {
  type = string

  default = "pgadmin.devops.svc.cluster.local"

}


variable "pgadmin-route-host" {
  type = list(string)


  default = ["pgadmin"]

}


variable "pricing-commons-service" {
  type = string

  default = "pricing-service-v2.pricing-commons.svc.cluster.local"

}


variable "pricing-service-v2-route" {
  type = list(string)


  default = ["api", "apidocs"]

}

variable "catalog-commons-service" {
  type = string

  default = "catalog-commons.catalog-commons.svc.cluster.local"

}


variable "catalog-commons-route" {
  type = list(string)


  default = ["apidocs", "api"]

}


variable "assortment-commons-service" {
  type = string

  default = "assortment-commons.assortment-commons.svc.cluster.local"

}


variable "assortment-commons-route" {
  type = list(string)


  default = ["apidocs", "api"]

}




variable "cert" {
  type = string

  default = <<EOT
-----BEGIN CERTIFICATE-----
MIIG6zCCBdOgAwIBAgIQT/WYUBSctOkVR4UEuc6z8DANBgkqhkiG9w0BAQsFADCB
ujELMAkGA1UEBhMCVVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xKDAmBgNVBAsT
H1NlZSB3d3cuZW50cnVzdC5uZXQvbGVnYWwtdGVybXMxOTA3BgNVBAsTMChjKSAy
MDEyIEVudHJ1c3QsIEluYy4gLSBmb3IgYXV0aG9yaXplZCB1c2Ugb25seTEuMCwG
A1UEAxMlRW50cnVzdCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSAtIEwxSzAeFw0y
MDA5MDExMzAxNTJaFw0yMTA5MzAxMzAxNTBaMH8xCzAJBgNVBAYTAlVTMRAwDgYD
VQQIEwdHZW9yZ2lhMRAwDgYDVQQHEwdBdGxhbnRhMRcwFQYDVQQKEw5UaGUgSG9t
ZSBEZXBvdDEUMBIGA1UECxMLSVQgU2VjdXJpdHkxHTAbBgNVBAMMFCoubWVyY2gu
aG9tZWRlcG90LmNhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxZ1a
TwjXsVtlN4bX43mslSkkbg9moT9H6G5IWMmOC98Mp/sIF75pyNekoAnpTnFq8wQI
hczKYT5xK0I6Nd6wxC8dYrFWRbM4rNqd+BAYKPEhTQ5uEpQvMBtblI1i9Rt9fjRo
8BTmm7gZslMu5a0EVIRFZnhy2USTsMAI7wNbXNp4Ct28ewKVFozlyaNPOHPc7QVf
+wbNTrdSQdPI98/LxvNqpsVkxPZH6QsWDhx++GBewJLvpyNaqHYOwydLrByNGOIr
JteWlcd5/UeEISQn4kAGe5TiNcvjEIxlTUSY19Yu441PBfAW5vbwaIixP8/SFZAe
U4BouYYq6gKwHn7iIwIDAQABo4IDJTCCAyEwDAYDVR0TAQH/BAIwADAdBgNVHQ4E
FgQU2BJ50nPa4jKjapfDkFUNIox65zIwHwYDVR0jBBgwFoAUgqJwdN28Uz/Pe9T3
zX+nYMYKTL8waAYIKwYBBQUHAQEEXDBaMCMGCCsGAQUFBzABhhdodHRwOi8vb2Nz
cC5lbnRydXN0Lm5ldDAzBggrBgEFBQcwAoYnaHR0cDovL2FpYS5lbnRydXN0Lm5l
dC9sMWstY2hhaW4yNTYuY2VyMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwu
ZW50cnVzdC5uZXQvbGV2ZWwxay5jcmwwMwYDVR0RBCwwKoIUKi5tZXJjaC5ob21l
ZGVwb3QuY2GCEm1lcmNoLmhvbWVkZXBvdC5jYTAOBgNVHQ8BAf8EBAMCBaAwHQYD
VR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMEwGA1UdIARFMEMwNwYKYIZIAYb6
bAoBBTApMCcGCCsGAQUFBwIBFhtodHRwczovL3d3dy5lbnRydXN0Lm5ldC9ycGEw
CAYGZ4EMAQICMIIBfgYKKwYBBAHWeQIEAgSCAW4EggFqAWgAdgBVgdTCFpA2AUrq
C5tXPFPwwOQ4eHAlCBcvo6odBxPTDAAAAXRJwm2DAAAEAwBHMEUCIA4tBIRmj9aV
C0THwBUCB4D4zSwb37F1Ln7ie4Eo2dH1AiEA5jWPjdUxJb7suCNLTwWBPO3Qy5po
paDW6lJQ73PcAJcAdgDuwJXujXJkD5Ljw7kbxxKjaWoJe0tqGhQ45keyy+3F+QAA
AXRJwm2/AAAEAwBHMEUCIE2PVkMNVCwEgYd8SjAo3cQtH49+AOnuEz13hnk0OY7O
AiEAy0/ocB+7ZfM5PbrbWAPVl7MMZhSBGVUPaDx2y329HzAAdgB9PvL4j/+IVWgk
wsDKnlKJeSvFDngJfy5ql2iZfiLw1wAAAXRJwm3JAAAEAwBHMEUCIH3RBuiTAbLV
SUoJSps1/lXWztAskYfty8C5J4WQTB2TAiEAhLqty2hN+idA6Ff+ag9jlKeRL476
ObGx/3ckX1gs5uMwDQYJKoZIhvcNAQELBQADggEBADOAnTJ4mWAOaS5jS21zPp11
+zE9txhqrGmbxpY/5iGt3pnye7vJaXRJgvQXiXJxwHuhDuUN4UMMLnJrrOIodcoW
uKD1q+nMhxkVf6++fPebJRqBpsurVo/7o5os9t+1L0cD+ECmAfyU3Z3aCUlyJXk6
xuxqSHoKnsRWipOoCt1CvQ52pTEMTzpL679UXyIwh6r48RxTpcNvGi+/C3/rJTRf
HTApG+BZhR9d4ovysVLLuqUosBneflIWejD0kQN9WWoe0OcC9BODOQd/OeqURvYR
HHl1LfytyOoqpcCA6Xgitnq5LeKVHWudF7bLXRpvPXfKuGKoWpytTW3THTySnZs=
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
MIIEPjCCAyagAwIBAgIESlOMKDANBgkqhkiG9w0BAQsFADCBvjELMAkGA1UEBhMC
VVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xKDAmBgNVBAsTH1NlZSB3d3cuZW50
cnVzdC5uZXQvbGVnYWwtdGVybXMxOTA3BgNVBAsTMChjKSAyMDA5IEVudHJ1c3Qs
IEluYy4gLSBmb3IgYXV0aG9yaXplZCB1c2Ugb25seTEyMDAGA1UEAxMpRW50cnVz
dCBSb290IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IC0gRzIwHhcNMDkwNzA3MTcy
NTU0WhcNMzAxMjA3MTc1NTU0WjCBvjELMAkGA1UEBhMCVVMxFjAUBgNVBAoTDUVu
dHJ1c3QsIEluYy4xKDAmBgNVBAsTH1NlZSB3d3cuZW50cnVzdC5uZXQvbGVnYWwt
dGVybXMxOTA3BgNVBAsTMChjKSAyMDA5IEVudHJ1c3QsIEluYy4gLSBmb3IgYXV0
aG9yaXplZCB1c2Ugb25seTEyMDAGA1UEAxMpRW50cnVzdCBSb290IENlcnRpZmlj
YXRpb24gQXV0aG9yaXR5IC0gRzIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
AoIBAQC6hLZy254Ma+KZ6TABp3bqMriVQRrJ2mFOWHLP/vaCeb9zYQYKpSfYs1/T
RU4cctZOMvJyig/3gxnQaoCAAEUesMfnmr8SVycco2gvCoe9amsOXmXzHHfV1IWN
cCG0szLni6LVhjkCsbjSR87kyUnEO6fe+1R9V77w6G7CebI6C1XiUJgWMhNcL3hW
wcKUs/Ja5CeanyTXxuzQmyWC48zCxEXFjJd6BmsqEZ+pCm5IO2/b1BEZQvePB7/1
U1+cPvQXLOZprE4yTGJ36rfo5bs0vBmLrpxR57d+tVOxMyLlbc9wPBr64ptntoP0
jaWvYkxN4FisZDQSA/i2jZRjJKRxAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAP
BgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBRqciZ60B7vfec7aVHUbI2fkBJmqzAN
BgkqhkiG9w0BAQsFAAOCAQEAeZ8dlsa2eT8ijYfThwMEYGprmi5ZiXMRrEPR9RP/
jTkrwPK9T3CMqS/qF8QLVJ7UG5aYMzyorWKiAHarWWluBh1+xLlEjZivEtRh2woZ
Rkfz6/djwUAFQKXSt/S1mja/qYh2iARVBCuch38aNzx+LaUa2NSJXsq9rD1s2G2v
1fN2D807iDginWyTmsQ9v4IbZT+mD12q/OWyFcq1rca8PdCE6OoGcrBNOTJ4vz4R
nAuknZoh8/CbCzB428Hch0P+vGOaysXCHMnHjf87ElgI5rY97HosTvuDls4MPGmH
VHOkc8KT/1EQrBVUAdj8BbGJoX90g5pJ19xOe4pIb4tF9g==
-----END CERTIFICATE-----
EOT
}


variable "key" {
  type    = string
  default = <<EOD
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDFnVpPCNexW2U3
htfjeayVKSRuD2ahP0fobkhYyY4L3wyn+wgXvmnI16SgCelOcWrzBAiFzMphPnEr
Qjo13rDELx1isVZFszis2p34EBgo8SFNDm4SlC8wG1uUjWL1G31+NGjwFOabuBmy
Uy7lrQRUhEVmeHLZRJOwwAjvA1tc2ngK3bx7ApUWjOXJo084c9ztBV/7Bs1Ot1JB
08j3z8vG82qmxWTE9kfpCxYOHH74YF7Aku+nI1qodg7DJ0usHI0Y4ism15aVx3n9
R4QhJCfiQAZ7lOI1y+MQjGVNRJjX1i7jjU8F8Bbm9vBoiLE/z9IVkB5TgGi5hirq
ArAefuIjAgMBAAECggEBAKUi/0q4ivaM96JVLqfLD+t9/BF1EUCCTybuscpwdCF7
fWoKnxKobmIFwm5ymeKRaNw3bJ/TKPPmaE/MAjTuKS1oadgFdaC9Sgk4j3WyjV35
Uui/vEAOUPiUhA05sY4+MLp8NY0bCjLqv56DYNdRpCK0fgJJeUASzJCRiWWimoCW
H5lYkAsOUBF+/nTNrkHoJusUPbUX6x7TtUzKu6G+/GGIpmX4ZGkN1iartXmcVAW1
x0ixP3DpVoq3N2Ec0/jNc8Q7Qs6l3BTvWDmhQkkVKGIQ4sFwSvDuDd+5LVjFDyt0
ijGKOShB7Ds1VhHP0e1vwMIH6oWBnOYxsocyRQzNjUECgYEA8OYQ4Se+KSg1TTzh
8vjbDrUKrqAthJu0S+PI6CjNB5qtJrCG84oXGf8EPii7UaOvUfXZQ5IEx7pP0ek1
a4HKFe5av/JNzN4N1Qao9eNPw70CwGKT9R+RlCsOMOz6qDGlpAmSo378l+SUDpdH
aAGdGy8JD+wPPQ0czlc5c+YWFbECgYEA0gCqhW3+d9elwxHFNQXDTTeeXBZEaWEh
bUI19Kw4hY1DnryJ/Rw8AgmeASV58aXBrUzlevjfc/UMyiYIxnny+Tg9LLCV0Qi8
XAc+ekx9xGCBVs11uqTb1+7knc20wEj7l5DI8xJgBlte6+sMj0nDnvfpzkYHUiK3
+3GfNf+TJhMCgYBReS4aSEu7NbsZPU8Z0uqbhcVwHAJpCBQpWoe3ZR06xihrnmZ1
9a0sgKBZuYLo8Jg5+xEZFkiBmFSopNwJWSMU2cFdi8CeWjeJZbA9QTzX8ZP9pxlt
XNjqqMkq6Os5eVkRKp+qpicd5BPi/20KEwmkiPripK7eshGdA8kNlrK/cQKBgF/n
D/iZT9GY+MlJzz60oAkeckJppNpfEi3cQ9m14KYU6iGOxpGBmGHx1Gd/nt3dLcKf
0FjFWP6SlUGn9u/09yIbLcy/49svWx3H7R9a2UCaNdbXQ4F2EjPdlCgArh/19He2
Fh7zcEjW51Vj5Tt2m1B4tRyPXH6E/nJk5Cl7ys5jAoGBAOM8CcRVGpx/FcjCcO/w
TIzuR4PBlzb4kOttFrAcA3XfJ4aXzhADiOHIO2g0TEeZE7p6Zz+nLXme2HFZPsFC
5PISKS3DR8mPnobe3JqBgqDxxLshdvWivfKVfG1Vcn0tKkuQs7IRSuQ46shyXn1t
cWBb6qAz7MXzBuf4PxfxkZvJ
-----END PRIVATE KEY-----
EOD
}


variable "sni" {
  type    = string
  default = <<EOF
*.merch.homedepot.ca
EOF
}

# akamai-terraform
How to export existing akamai configuration
``` sh 
$ brew install akamai
```
``` sh 
 $ akamai install terraform
```
Create a .edgerc file (for authenticating with Akamai’s APIs and CLI)
``` sh 
 $ akamai terraform export-appsec <"security configuration name">
```
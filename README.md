# akamai-terraform
How to export existing akamai configuration
``` sh 
brew install akamai
```
``` sh 
akamai install terraform
```
Create a .edgerc file (for authenticating with Akamai’s APIs and CLI) and then run:
``` sh 
akamai terraform export-appsec < security configuration name >
```


(Optional) Install nvm then,
``` sh 
akamai install property-manager
```

If errors with duplicate or not unique resources run
``` sh 
terraform import <resource> id
```
#https://letsencrypt.org/docs/certificates-for-localhost/
openssl req -x509 -out jenkins.matthewdavis111.crt -keyout jenkins.matthewdavis111.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=jenkins.matthewdavis111.com' -extensions EXT -config <( \
   printf "[dn]\nCN=jenkins.matthewdavis111.com\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:jenkins.matthewdavis111.com\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

# Create PEM for haproxy
cat jenkins.matthewdavis111.key jenkins.matthewdavis111.crt >> jenkins.pem

# Create cer cert for Windows root store
openssl x509 -outform der -in jenkins.pem -out jenkins.matthewdavis111.cer

# PowerShell to run on Windows
#Import self signed cert to trusted root
Import-Certificate -FilePath C:\TEMP\jenkins.matthewdavis111.cer -CertStoreLocation Cert:\LocalMachine\Root\

#Clean up the cert from the root store
ls Cert:\LocalMachine\Root\ | where -FilterScript {$_.subject -like "*jenkins.matthewdavis111.com*"} | Remove-Item

openssl req -x509 -out $domain.crt -keyout $domain.key \
  -newkey rsa:2048 -nodes -sha256  \
  -subj "/CN=$domain" -extensions EXT -config <( \printf "[dn]\nCN=$domain\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:$domain\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
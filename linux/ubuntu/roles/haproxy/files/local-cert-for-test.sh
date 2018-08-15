#https://letsencrypt.org/docs/certificates-for-localhost/
openssl req -x509 -out jenkins.matthewdavis111.crt -keyout jenkins.matthewdavis111.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=jenkins.matthewdavis111.com' -extensions EXT -config <( \
   printf "[dn]\nCN=jenkins.matthewdavis111.com\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:jenkins.matthewdavis111.com\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
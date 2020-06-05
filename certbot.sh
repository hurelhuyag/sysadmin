
## wildcard domain registration
certbot certonly --manual \
    -d *.r.sodonsolution.org \
    --agree-tos --no-bootstrap --manual-public-ip-logging-ok --preferred-challenges dns-01 --server https://acme-v02.api.letsencrypt.org/directory

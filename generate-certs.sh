# run to generate self-signed certificates for local development
docker run --rm -v ${pwd}/certs:/certs -it alpine/openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /certs/selfsigned.key -out /certs/selfsigned.crt -subj "/C=US/ST=State/L=City/O=Organization/OU=OrgUnit/CN=localhost"

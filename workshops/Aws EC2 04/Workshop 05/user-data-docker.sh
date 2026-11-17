#!/bin/bash

apt update
apt install -y docker.io

systemctl enable docker
systemctl start docker

mkdir -p /var/www/html
cat > /var/www/html/index.html <<'EOFHTML'
<h1>Contenedor en EC2</h1>
<p>Docker + User Data</p>
EOFHTML

docker run -d --name web --restart always -p 80:80 \
  -v /var/www/html:/usr/share/nginx/html:ro nginx:alpine

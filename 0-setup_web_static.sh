#!/usr/bin/env bash
# Sets up web servers for the deployment of web stat
# - Installs Nginx
# - Creates /data/, /data/web_static, /data/web_static/releases/,
# /data/web_static/releases/test, /data/web_static/releases/test/index.html
# - Creates a sym link /data/web_static/current -> /data/web_static/releases/test/
# - grants /data/ -> ubuntu and group
# - updates nginx conf to serve /data/web_static/current/
# - restarts nginx
apt-get -y update
apt-get -y install nginx
mkdir -p /data/web_static/releases/test/
mkdir -p /data/web_static/shared
web="<html>
  <head>
  </head>
  <body>
    Holberton School
  </body>
</html>"
echo "$web" > /data/web_static/releases/test/index.html
ln -sf /data/web_static/releases/test/ /data/web_static/current
chown -R ubuntu:ubuntu /data/
sed -i "/^\tlocation \/ {$/ i\\\tlocation /hbnb_static {\n\t\talias /data/web_static/current/;\n\t\tautoindex off;\n}" /ect/nginx/sites-available/default
service nginx restart
exit 0

#Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements
exec { 'install_nginx_add_header':
  command  => "sudo apt-get -y update && sudo apt-get -y install nginx && echo "Holberton School" | sudo tee /var/www/html/index.html && sed -i '/sendfile on;/a add_header X-Served-By $HOSTNAME;' /etc/nginx/nginx.conf && service nginx start",
  provider => 'shell',
}

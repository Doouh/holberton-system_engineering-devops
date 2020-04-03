#Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements
exec { 'install_nginx_add_header':
  command  => "apt-get update && apt-get -y install nginx && echo -e 'Holberton School' > /var/www/html/index.html && sed -i '/listen 80 default_server;/a rewrite ^/redirect_me https://www.youtube.com/ permanent;' /etc/nginx/sites-available/default && sed -i '22i add_header X-Served-By $hostname;' /etc/nginx/nginx.conf && service nginx start",
  provider => 'shell',
}

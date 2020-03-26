#Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements
exec { 'install_configure_nginx':
  command  => "apt-get -y update && apt-get -y install nginx && echo 'Holberton School' > /var/www/html/index.html && sed -i '/listen 80 default_server;/a rewrite ^/redirect_me https://www.youtube.com/ permanent;' /etc/nginx/sites-available/default && service nginx start",
  provider => 'shell',
}

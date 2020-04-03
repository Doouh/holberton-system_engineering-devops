#Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements
exec { 'install_nginx_add_header':
  command  => "sed -i '/sendfile on;/a add_header X-Served-By $HOSTNAME;' /etc/nginx/nginx.conf",
  provider => 'shell',
}

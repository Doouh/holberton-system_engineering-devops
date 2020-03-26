#Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements
exec { 'update_install':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => 'apt-get -y update && apt-get -y install nginx',
  provider => 'shell'
}

exec { 'modify_files':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => "echo 'Holberton School' > /var/www/html/index.html && sed -i '/listen 80 default_server;/a rewrite ^/redirect_me https://www.youtube.com/ permanent;' /etc/nginx/sites-available/default",
  provider => 'shell'
}

exec { 'start_nginx':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => 'service nginx start',
  provider => 'shell'
}

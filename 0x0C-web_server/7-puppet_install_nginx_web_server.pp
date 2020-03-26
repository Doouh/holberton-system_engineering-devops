#Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements
exec { 'update_packages':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => 'apt-get update',
  provider => 'shell'
}

exec { 'install_nginx':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => 'apt-get -y install nginx',
  provider => 'shell'
}

exec { 'create_index':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => "echo -e 'Holberton School' > /var/www/html/index.html",
  provider => 'shell'
}

exec { 'config_redirect':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => "sed -i '/listen 80 default_server;/a rewrite ^/redirect_me https://www.linkedin.com/ permanent;' /etc/nginx/sites-available/default",
  provider => 'shell'
}

exec { 'start_nginx':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => 'service nginx start',
  provider => 'shell'
}

#Grow the limit of requests
exec { 'add_request_to_limit':
    command => "sed -i 's/15/1000/g' /etc/default/nginx && /etc/init.d/nginx restart",
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
}

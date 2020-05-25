#Grow the limit of requests
exec { 'add_request_to_limit':
    command => "sed -i 's/4/64000/g' /etc/security/limits.conf && sed -i 's/5/64000/g' /etc/security/limits.conf",
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
}

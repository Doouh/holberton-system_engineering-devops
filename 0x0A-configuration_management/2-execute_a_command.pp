# Create a manifest that kills a process named killmenow
exec { 'pkill killmenow':
  path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command => 'pkill -f killmenow',
}

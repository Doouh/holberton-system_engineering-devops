exec { 'fixed_extension_file':
    command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
}

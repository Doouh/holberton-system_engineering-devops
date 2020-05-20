#Change extension from phpp to php
exec { 'fixed_extension_file':
    command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php && service apache2 reload",
    path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
}

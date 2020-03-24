# Set up your client SSH configuration file so that you can connect to a server without typing a password
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => 'PasswordAuthentication',
}

file_line { 'Declare identity file':
  path  => '/etc/ssh/shh_config',
  line  => 'IdentityFile ~/.ssh/holberton',
  match => 'IdentityFile',
}
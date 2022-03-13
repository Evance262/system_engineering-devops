# This manifest changes the ssh configuration file
exec {'/etc/ssh/ssh_config':
path     => '/bin',
command  => 'echo "    IdentityFile ~/.ssh/school\n    PasswordAuthentication no" >> /etc/ssh/ssh_config',
provider => 'shell',
}

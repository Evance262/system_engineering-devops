# Puppet maniest that installs NGINX
# Puppet maniest that installs NGINX
'nginx-plus': {
  apt::source { 'nginx':
    location => "https://plus-pkgs.nginx.com/${distro}",
    repos    => 'nginx-plus',
    key      => '573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62',
  }
  exec { 'download 90nginx file':
  command => "/usr/bin/wget -q -O /etc/apt/apt.conf.d/90nginx
https://cs.nginx.com/static/files/90nginx",
  creates => "/etc/apt/apt.conf.d/90nginx"
  }
  file { '/etc/ssl/nginx':
    ensure => directory,
    mode => "0755",
    owner => "root",
    group => "root",
  }
  file { '/etc/ssl/nginx/nginx-repo.crt':
    ensure => present,
    mode => "0644",
    owner => "root",
    group => "root",
    content => "Contents of your nginx‑repo.crt file here as one line",
  }
  file { '/etc/ssl/nginx/nginx-repo.key':
    ensure => present,
    mode => "0644",
    owner => "root",
    group => "root",
    content => "Contents of your nginx‑repo.key file here as one line",
  }
}

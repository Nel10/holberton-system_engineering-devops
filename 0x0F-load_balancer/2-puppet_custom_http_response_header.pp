# Add a custom HTTP header with Puppet

exec { 'update':
    command  => '/user/bin/apt-get update',
}
-> package { 'nginx':
    ensure  => installed,
    require => Exec['update']
}
-> file_line { 'Add redirection, 301':
    ensure => 'present',
    path   => '/etc/nginx/sities-available/default',
    after  => 'liste 80 default_server;',
    line   => 'rewrite ^/redirect_me https://www.linkedin.com/in/shannel-bejarano-022801215/ permanent;',
}
-> file_line { 'custom http server':
    ensure => 'present',
    path   => '/etc/nginx/sities-available/default',
    after  => 'liste 80 default_server;',
    line   => "add_header X-Server-By ${hostname};",
}
-> file { '/var/www/html/index.html':
    content -> 'Hello World',
}
-> service { 'nginx':
    ensure  => running,
    require => package['nginx'],
}

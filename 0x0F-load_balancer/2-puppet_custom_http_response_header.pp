# Add a custom HTTP header with Puppet

exec { 'update':
    command  => 'sudo apt-get update',
    provider => shell,
}
-> package {'nginx':
    ensure => present,
    path   => '/etc/nginx/sities-available/default',
    line   => "   location / {
    add_header X-Server-By ${hostname};",
    math   => '^\location / {',
}
-> exec { 'restart service':
    command  => 'sudo service nginx restart',
    provider => shell,
}

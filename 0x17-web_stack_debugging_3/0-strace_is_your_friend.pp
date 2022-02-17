# find the error and fix it

exec { 'delete a letter':
    command  => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
    provider => shell,
}

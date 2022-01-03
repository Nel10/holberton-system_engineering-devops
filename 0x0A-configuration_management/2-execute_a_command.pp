# create a manifest that kills a process named killmenow.

exec { 'killme_rigthnow':
command  => 'pkill -f killmenow',
provider => shell,
}

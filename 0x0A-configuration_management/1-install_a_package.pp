# install puppet-lint

package {'puppet-lint':
ensure   => 'present',
provider => gem 'puppet-lint','~> 2.5.0',
}

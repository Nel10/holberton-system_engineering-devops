# install puppet-lint

package {'puppet-lint':
ensure   => 'installed',
provider => 'gem install puppet-lint -v 2.5.0',
}

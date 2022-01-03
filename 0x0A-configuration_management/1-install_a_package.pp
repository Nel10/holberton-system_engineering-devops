# install puppet-lint

package {'puppet-lint':
ensure   => 'install 2.5.0',
provider => 'gem',
}

# Puppet Manifest for killing the 'killmenow' process
# Requirements:
# - Must use the exec Puppet resource
# - Must use pkill

exec { 'killmenow':
  command     => '/usr/bin/pkill -f killmenow',
  path        => '/bin:/usr/bin',
  onlyif      => '/usr/bin/pgrep -f killmenow',
  refreshonly => true,
}


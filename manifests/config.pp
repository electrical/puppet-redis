# == Class: redis::config
#
# This class exists to coordinate all configuration related actions,
# functionality and logical units in a central place.
#
#
# === Parameters
#
# This class does not provide any parameters.
#
#
# === Examples
#
# This class may be imported by other classes to use its functionality:
#   class { 'redis::config': }
#
# It is not intended to be used directly by external resources like node
# definitions or other modules.
#
#
# === Authors
#
# * Richard Pijnenburg <mailto:richard@ispavailability.com>
#
class redis::config {

  #### Configuration

  file { 'redis_config':
    ensure  => 'present',
    path    => '/etc/redis.conf',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template($redis::redis_config),
    notify  => Service['redis'],
  }

}

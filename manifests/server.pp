# == Class: jmeter::server
#
# This class configures the server componet of JMeter.
#
# === Examples
#
#   class { 'jmeter::server': }
#
class jmeter::server() {
  include jmeter

  file { '/usr/bin/jmeter-server':
    ensure  => link,
    target  => '/opt/apache-jmeter-2.7/bin/jmeter-server',
    require => Exec['install-jmeter'],
  }

  file { '/etc/init.d/jmeter-server':
    source => 'puppet:///modules/jmeter/jmeter-server',
  }
}
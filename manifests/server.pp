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

  file { '/etc/init.d/jmeter':
    source => 'puppet:///modules/jmeter/jmeter-server',
    owner  => root,
    group  => root,
    mode   => 0755,
  }

  exec { 'jmeter-update-rc':
    command     => 'update-rc.d jmeter defaults',
    subscribe   => File['/etc/init.d/jmeter'],
    refreshonly => true,
  }

  service { 'jmeter-server':
    ensure  => running,
    enable  => true,
    require => Exec['jmeter-update-rc'],
  }
}
# == Class: jmeter
#
# This class installs the latest stable version of JMeter.
#
# === Examples
#
#   class { 'jmeter': }
#
class jmeter() {
  package { 'openjdk-6-jre-headless':
    ensure => present,
  }

  exec { 'download-jmeter':
    command => 'wget -P /root http://mirrors.rackhosting.com/apache//jmeter/binaries/apache-jmeter-2.7.tgz',
    creates => '/root/apache-jmeter-2.7.tgz'
  }

  exec { 'install-jmeter':
    command => 'tar xzf /root/apache-jmeter-2.7.tgz && mv apache-jmeter-2.7',
    cwd     => '/usr/share',
    creates => '/usr/share/jmeter',
    require => Exec['download-jmeter'],
  }
}
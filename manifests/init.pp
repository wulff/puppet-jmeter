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
    command => 'tar xzf /root/apache-jmeter-2.7.tgz && chown -R root.root /opt/apache-jmeter-2.7',
    cwd     => '/opt',
    creates => '/opt/apache-jmeter-2.7',
    require => Exec['download-jmeter'],
  }

  file { '/usr/bin/jmeter':
    source  => 'puppet:///modules/jmeter/jmeter.sh',
    owner   => root,
    group   => root,
    mode    => 0755,
    require => Exec['install-jmeter'],
  }
}
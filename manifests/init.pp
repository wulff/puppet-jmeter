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

  package { 'unzip':
    ensure => present,
  }

  exec { 'download-jmeter':
    command => 'wget -P /root http://mirrors.rackhosting.com/apache/jmeter/binaries/apache-jmeter-2.7.tgz',
    creates => '/root/apache-jmeter-2.7.tgz'
  }

  exec { 'install-jmeter':
    command => 'tar xzf /root/apache-jmeter-2.7.tgz && mv apache-jmeter-2.7 jmeter',
    cwd     => '/usr/share',
    creates => '/usr/share/jmeter',
    require => Exec['download-jmeter'],
  }

  exec { 'download-jmeter-plugins':
    command => 'wget -P /root http://jmeter-plugins.googlecode.com/files/JMeterPlugins-0.5.4.zip',
    creates => '/root/JMeterPlugins-0.5.4.zip'
  }

  exec { 'install-jmeter-plugins':
    command => 'unzip -q -d JMeterPlugins JMeterPlugins-0.5.4.zip && mv JMeterPlugins/JMeterPlugins.jar /usr/share/jmeter/lib/ext',
    cwd     => '/root',
    creates => '/usr/share/jmeter/lib/ext/JMeterPlugins.jar',
    require => [Package['unzip'], Exec['install-jmeter'], Exec['download-jmeter-plugins']],
  }
}
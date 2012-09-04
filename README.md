Puppet JMeter
=============

This class installs the latest stable version of JMeter from apache.org.

The init script included in this module is based on the one found in https://github.com/pdrakeweb/puppet-jmeter

The jmeter.sh and jmeter-server.sh scripts are from the Ubuntu jmeter package.


Basic usage
-----------

Install JMeter:

    class { 'jmeter': }

Install JMeter server:

    class { 'jmeter::server': }


Authors
-------

Morten Wulff <wulff@ratatosk.net>
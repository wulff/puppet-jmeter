Puppet JMeter
=============

This class installs the latest stable version of JMeter from apache.org.

The init script is based on the one available at https://gist.github.com/2830209.


Basic usage
-----------

Install JMeter:

    class { 'jmeter': }

Install JMeter server:

    class { 'jmeter::server': }


Authors
-------

Morten Wulff <wulff@ratatosk.net>
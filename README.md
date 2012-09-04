Puppet JMeter
=============

This class installs the latest stable version of JMeter from apache.org.

The original init script can be found at https://gist.github.com/2830209, only the IP address and the location of JMeter have been changed.


Basic usage
-----------

Install JMeter:

    class { 'jmeter': }

Install JMeter server:

    class { 'jmeter::server': }


Authors
-------

Morten Wulff <wulff@ratatosk.net>
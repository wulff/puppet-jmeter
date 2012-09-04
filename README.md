Puppet JMeter
=============

This class installs the latest stable version of JMeter from apache.org. If you use the ::server class, an init-file will be added to `/etc/init.d` and JMeter will be started in server mode listening on the default port.

The init script is based on the one available at https://gist.github.com/2830209.


Basic usage
-----------

Install JMeter:

    class { 'jmeter': }

Install JMeter server:

    class { 'jmeter::server': }


Authors
-------

Morten Wulff  
<wulff@ratatosk.net>
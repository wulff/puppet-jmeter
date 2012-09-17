Puppet JMeter
=============

This class installs the latest stable version of JMeter from apache.org. If you use the `::server` class, an init-file will be added to `/etc/init.d` and JMeter will be started in server mode listening on the default port.

Both the `jmeter` and `jmeter::server` classes will install the `jmeter-plugins` package which adds a lot of useful listeners, thread groups, etc.

The init script is based on the one available at https://gist.github.com/2830209.


Basic usage
-----------

Install JMeter:

    class { 'jmeter': }

Install JMeter server using the default host-only IP address 33.33.33.10:

    class { 'jmeter::server': }

Install JMeter server using a custom host-only IP address:

    class { 'jmeter::server':
      server_ip => '33.33.33.42',
    }


Authors
-------

Morten Wulff  
<wulff@ratatosk.net>
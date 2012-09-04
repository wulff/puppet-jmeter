#!/bin/sh

# Include the wrappers utility script
. /usr/lib/java-wrappers/java-wrappers.sh

find_jars avalon-framework batik bsf bsh commons-collections3
find_jars commons-httpclient commons-io commons-jexl commons-lang
find_jars commons-logging commons-net
find_jars excalibur-logger excalibur-logkit geronimo-jms-1.1-spec gnumail
find_jars jboss-j2ee jcharts jdom1 jtidy js
find_jars junit libhtmlparser oro xalan2 xmlgraphics-commons xstream
find_jars /usr/share/jmeter/lib/jorphan.jar
find_jars /usr/share/jmeter/bin/ApacheJMeter.jar

run_java -Djmeter.home=/usr/share/jmeter org.apache.jmeter.NewDriver "$@"
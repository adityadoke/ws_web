#!/bin/sh

cd /var/lib/jetty

exec java -Xmx512m -jar /usr/local/jetty/start.jar -Dconfig.resource=CONF_FILE

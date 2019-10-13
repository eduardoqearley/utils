#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home
export CATALINA_HOME=/Users/eduardo/tomcat
trap ctrl_c INT
function ctrl_c() {
        echo "** Trapped CTRL-C - running shutdown.sh"
        sh $CATALINA_HOME/bin/shutdown.sh
}
sh $CATALINA_HOME/bin/startup.sh&
tail -f $CATALINA_HOME/logs/catalina.out


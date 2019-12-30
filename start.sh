#!/bin/bash
echo "update"
git fetch
git pull
echo "start"
rm -rf nohup*
kill -9 $(ps -ef | grep java | grep -v grep | awk '{print $2}')
nohup java -jar *.jar &

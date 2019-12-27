#!/bin/bash
echo "update"
git fetch
git pull
echo "start"
nohup java -jar *.jar &

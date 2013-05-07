#!/bin/bash

bundle install
rake assets:clean
rake assets:precompile
sudo kill `sudo netstat -alntp | grep LISTEN | grep 9002 | awk '{print $7}' | cut -f 1 -d '/'`
nohup bundle exec thin start -p 9002 -e production > log/server.log 2>&1 &


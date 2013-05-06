bundle install
nohup bundle exec thin start -p 9002 -e production > log/server.log 2>&1 &


#!/bin/bash
echo "init datas by js";
for file in `\find /var/init/ -maxdepth 1 -name '*.js'`; do
  mongo $file >&1;
done

tail -n +0 -f /var/log/mongodb/mongod.log;

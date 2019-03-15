#!/bin/bash
echo "create user";
mongo rs0 --eval 'db.createUser({user: "rs0", pwd: "mypassword", roles:[{role: "readWrite", db: "mydb"}]})';

echo "init datas by js";
for file in `\find /var/init/ -maxdepth 1 -name '*.js'`; do
  mongo rs0 $file;
done

tail -n +0 -f /var/log/mongodb/mongod.log;

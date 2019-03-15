#!/bin/bash
echo "mongod start";
mongod --smallfiles --replSet rs0 --bind_ip_all --fork --logpath /var/log/mongodb/mongod.log && sleep 5s && mongo --eval 'rs.initiate()';
echo "mongo initiate";
mongo admin --eval 'rs.add({host: "mongodb_1:27017"})';
mongo admin --eval 'rs.add({host: "mongodb_2:27017"})';
mongo admin --eval 'rs.add({host: "mongodb_arbiter:27017"}, arbiterOnly: true)';
mongo admin --eval 'rs.status()';
echo "sleep 3s"
sleep 3s

echo "01-create.sh";
sh ./scripts/01-create.sh;
exit;

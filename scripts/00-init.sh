#!/bin/bash
echo "mongod start";
mongod --smallfiles --config /etc/mongod.conf && sleep 5s && mongo --eval 'rs.initiate({_id: "rs0", members:[{_id: 0, host: "mongodb:27017"}, {_id: 1, host: "mongodb_1:27017"}, {_id: 2, host: "mongodb_2:27017"}, {_id: 3, host: "mongodb_arbiter:27017", arbiterOnly: true}]})';
mongo --eval 'rs.status()';

echo "initialize replicaSet. sleep 15s"
sleep 15s

echo "11-createUser.js"
mongo ./scripts/11-createUser.js >&1;

echo "01-create.sh";
sh ./scripts/01-create.sh;
exit;

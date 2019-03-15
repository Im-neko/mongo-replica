#!/bin/bash
echo "mongod start";
mongod --smallfiles --config /etc/mongod.conf && sleep 5s && sleep 5s && mongo --eval 'rs.initiate({_id: "rs0", members:[{_id:0, host: "my-ip:30000"}]})';
mongo --eval 'rs.add({_id: 1, host: "my-ip:30001"})';
mongo --eval 'rs.add({_id: 2, host: "my-ip:30002"})';
mongo --eval 'rs.add({_id: 3, host: "my-ip:30003", arbiterOnly: true})';
mongo --eval 'rs.status()';
echo "sleep 3s"
sleep 3s

echo "01-create.sh";
sh ./scripts/01-create.sh;
exit;

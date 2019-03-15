#!/bin/bash
mongod --smallfiles --replSet rs0 --bind_ip_all --logpath /var/log/mongodb/mongod.log && tail -n +0 -f /var/log/mongodb/mongod.log;
exit;

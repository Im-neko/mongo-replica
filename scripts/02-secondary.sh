#!/bin/bash
mongod --smallfiles --config /etc/mongod.conf && tail -n +0 -f /var/log/mongodb/mongod.log;
exit;

mkdir -p keys
openssl rand -base64 756 > keys/mongo.key
chmod 400 keys/mongo.key

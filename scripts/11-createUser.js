var admin = db.getSiblingDB('admin');
admin.createUser({user: 'neko', pwd: '123', roles: [{role: 'userAdminAnyDatabase', db: 'admin'}]});


db.getSiblingDB('admin').auth('neko', '123');
var mydb = db.getSiblingDB('mydb')
mydb.createUser({user: 'nek0', pwd: '123', roles: [{role: 'readWrite', db: 'mydb'}]});

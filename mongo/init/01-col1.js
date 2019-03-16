db.getSiblingDB('mydb').auth('nek0', '123');
var mydb = db.getSiblingDB('mydb');
mydb.users.insertMany([
    {
        _id: ObjectId('1acb0373fe2fa30506e7c919'),
        name: 'neko',
        twitter: '@im_nuko',
        github: 'im-neko'
    }
]);

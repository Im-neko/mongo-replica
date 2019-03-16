var config = {
  _id: 'rs0',
  members: [
    {_id: 0, host: 'mongodb:27017'},
    {_id: 1, host: 'mongodb_1:27017'},
    {_id: 2, host: 'mongodb_2:27017'},
    {_id: 3, host: 'mongodb_arbiter:27017', arbiterOnly: true},
  ]
};
rs.initiate(config);

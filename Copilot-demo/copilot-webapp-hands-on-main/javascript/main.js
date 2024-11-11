/* 
    Express.jsを使ってWebサーバを起動し、Port 3000で待ち受ける
    "/"にアクセスがあったら"hello world"を返す
    "/users"にアクセスがあったら3人分のユーザ情報をJSON形式で返す
    ユーザ情報は"name"と"age"の属性を持つ
*/
var express = require('express');
var app = express();

app.get('/', function(req, res){
    res.send('hello world');
});

app.get('/users', function(req, res){
    var users = [
        {name: 'Taro', age: 20},
        {name: 'Hanako', age: 18},
        {name: 'Sachiko', age: 16}
    ];
    res.json(users);
});

app.listen(3000);
console.log('Server running at http://localhost:3000/');

<?php

/*
Webサーバを起動し、localhostのPort 3000で待ち受ける
REQUEST_URIによって処理を分岐する
"/"にアクセスがあったら"hello world"を返す
"/users"にアクセスがあったら3人分のユーザ情報をJSON形式で返す
ユーザ情報は"name"と"age"の属性を持つ
*/

$uri = $_SERVER['REQUEST_URI'];

if ($uri === '/') {
    echo 'hello world';
} elseif ($uri === '/users') {
    $users = [
        ['name' => 'Taro', 'age' => 20],
        ['name' => 'Jiro', 'age' => 21],
        ['name' => 'Saburo', 'age' => 22],
    ];
    echo json_encode($users);
}

?>


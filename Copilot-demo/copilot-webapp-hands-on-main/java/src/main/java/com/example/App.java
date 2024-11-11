package com.example;

import io.javalin.Javalin;

// "name"と"age"の属性を持つユーザ情報を表すクラス
class User {
    String name;
    int age;

    User(String name, int age) {
        this.name = name;
        this.age = age;
    }
}

 /**
    Javalinを使ってWebサーバを起動し、Port 3000で待ち受ける
    "/"にアクセスがあったら"hello world"を返す
    "/users"にアクセスがあったら3人分のユーザ情報をJSON形式で返す
    ユーザ情報は"name"と"age"の属性を持つ
**/

// Main Class
public class App {
    public static void main(String[] args) {
        Javalin app = Javalin.create().start(3000);
        app.get("/", ctx -> ctx.result("hello world"));

        // "/users"のパスにアクセスがあったらJSON形式で返す
        app.get("/users", ctx -> ctx.result(
            // 3人分のユーザ情報をJSON形式で返す
            "[{\"name\":\"Alice\",\"age\":20},{\"name\":\"Bob\",\"age\":21},{\"name\":\"Carol\",\"age\":22}]"));
    }
}

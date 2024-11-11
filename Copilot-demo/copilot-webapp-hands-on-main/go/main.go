/*
net/httpを使ってWebサーバを起動し、Port 3000で待ち受ける
"/"にアクセスがあったら"hello world"を返す
"/users"にアクセスがあったら3人分のユーザ情報をJSON形式で返す
ユーザ情報は"name"と"age"の属性を持つ
*/
package main

import (
	"encoding/json"
	"net/http"
)

type User struct {
	Name string `json:"name"`
	Age  int    `json:"age"`
}

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("hello world"))
	})

	http.HandleFunc("/users", func(w http.ResponseWriter, r *http.Request) {
		users := []User{
			{Name: "Taro", Age: 20},
			{Name: "Hanako", Age: 21},
			{Name: "Jiro", Age: 22},
		}
		json.NewEncoder(w).Encode(users)
	})

	http.ListenAndServe(":3000", nil)
}

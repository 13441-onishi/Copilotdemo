=begin
    Sinatraを使ってWebサーバを起動し、Port 3000で待ち受ける
    "/"にアクセスがあったら"hello world"を返す
    "/users"にアクセスがあったら3人分のユーザ情報をJSON形式で返す
    ユーザ情報は"name"と"age"の属性を持つ
=end
require 'sinatra'
require 'json'

get '/' do
    'hello world'
end

get '/users' do
    users = [
        {name: 'Alice', age: 20},
        {name: 'Bob', age: 30},
        {name: 'Carol', age: 40}
    ]
    users.to_json
end

# ポートを設定
set :port, 3000

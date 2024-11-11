'''
flaskを使ってWebサーバを起動し、localhostのPort 3000で待ち受ける
"/"にアクセスがあったら"hello world"を返す
"/users"にアクセスがあったら3人分のユーザ情報をJSON形式で返す
ユーザ情報は"name"と"age"の属性を持つ
'''
import flask
app = flask.Flask(__name__)

@app.route("/")
def hello():
    return "hello world"

@app.route("/users")
def users():
    users = [
        {"name": "taro", "age": 20},
        {"name": "jiro", "age": 30},
        {"name": "saburo", "age": 40},
    ]
    return flask.jsonify(users)


if __name__ == "__main__":
    app.run(host="localhost", port=3000)

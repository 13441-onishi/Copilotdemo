--[[ 
    lapisを使ってWebサーバを起動し、Port 3000で待ち受ける
    "/"にアクセスがあったら"hello world"を返す
    "/users"にアクセスがあったら3人分のユーザ情報をJSON形式で返す
    ユーザ情報は"name"と"age"の属性を持つ
--]]

local lapis = require("lapis")
local app = lapis.Application()
app:enable("etlua")

app:get("/", function()
    return "hello world"
end)

app:get("/users", function()
    return {
        json = {
            {name = "taro", age = 20},
            {name = "jiro", age = 21},
            {name = "saburo", age = 22}
        }
    }
end)

return app

var ws = require("nodejs-websocket")
console.log("开启服务");

// Scream server example: "hi" -> "HI!!!"
var server = ws.createServer(function (conn) {
    console.log("New connection")
    conn.on("text", function (str) {
      server.connections.forEach(function(connection){
          connection.sendText(str);

      })
    })
    conn.on("close", function (code, reason) {
        console.log("Connection closed")
    })
    conn.on("error",function (param) {
        console.log(param)
      })
}).listen(8001)
const WebSocket = require("ws");
const express = require("express");
const app = express();
const server = require("http").createServer(app);
const wss = new WebSocket.Server({ server });

// Handle Web Socket Connection
wss.on("connection", function connection(ws) {
  console.log("New Connection Initiated");
});

//Handle HTTP Request
app.get("/", (req, res) => res.send("Hello World"));

console.log("Listening at Port 8080");
server.listen(8080);

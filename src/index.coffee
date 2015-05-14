server          = require('http').createServer()
readline        = require 'readline'
io              = require('socket.io')(server)
{ spawn }       = require 'child_process'

port = 9090

io.on 'connect', (socket) ->
  console.info 'Connecting…', socket
  socket.on 'disconnect', ->
    console.info 'Disconnecting…'

server.listen port

readline.createInterface
  input: process.stdin,
  terminal: false
.on 'line', (line) ->
  console.info 'Emitting', line
  io.emit 'sample', line

console.info "Listening on port #{port}"

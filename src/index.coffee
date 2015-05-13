server          = require('http').createServer()
readline        = require 'readline'
io              = require('socket.io')(server)
{ spawn }       = require 'child_process'
proc            = child_process.spawn()

port = 9090

io.on 'connect', (socket) ->
  console.info 'Connecting…', socket
  socket.on 'disconnect', ->
    console.info 'Disconnecting…'

server.listen port

feeder = spawn 'smsutil', ['-a', 'txyz']

readline.createInterface
  input: feeder.stdout,
  terminal: false
.on 'line', (line) ->
  io.emit 'sample', line

console.info "Listening on port #{port}"

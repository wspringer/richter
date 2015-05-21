# Read me

Especially for Stuart Buck, I'll tell you how to start it:

```bash
socat EXEC:'/Users/richter/bin/smsutil -i 0 -a txyz',pty,ctty STDIO | node lib/index.js
```

… so there cannot be any further argument about it.

Richter is a little node.js based server that will expose a socket.io based interface to data getting collected from the Sudden Motion Sensor built in to your Mac. (That is, if you have an old MBP, or one that did have non-SSD hard disk.)

In order to use this tool, you need to first install smsutils from the [SMSLib](http://suitable.com/tools/smslib.html) project.

require 'stomp'


login = 'admin'
passcode = 'Testing1234'
host = 'paste_host_here'
port = 61614
clienet = Stomp::Client.new({
    hosts: [
        login: login, passcode: passcode, host:host, port: port, ssl:true
    ]
})

#connection_string = 'stomps://admin:Testing1234...'
client = Stomp::Client.new(config)

dest = '/queue/test'
client.publish(dest, "Hello World! STOMP")
client.close
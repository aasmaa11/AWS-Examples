messrequire 'stomp'


login = 'admin'
passcode = 'Testing1234'
host = 'paste_host_here'
port = 61614

config{
    hosts: [
        login: login, passcode: passcode, host:host, port: port, ssl:true
    ]
}

#connection_string = 'stomps://admin:Testing1234...'

client = Stomp::Client.new(config)
dest = '/queue/test'
client.subscribe(dest) do |message|
    client.acknowledge(message)
end
client.join
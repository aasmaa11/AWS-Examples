require 'bunny'

config = {
    host: "localhost",
    vhost: "/",
    user: "admin",
    password: "Testing1234",
    port 5671
}



connection_string = "amqp://admin:Testin1234..."
b = Bunny.new(connection_string)
connection.start

channel = connection.create_channel
queue = channel.queue('hello')

begin
    queue.subscribe(block: true) do |_delivery_info, _properties,body|
    puts body
    end 

rescue => e
    puts e.inspect
    channel.close
    connection.close
    exit(0)
end

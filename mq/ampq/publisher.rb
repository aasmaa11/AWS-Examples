require 'bunny'

connection_string = "amqp://admin:Testin1234..."
connection = Bunny.new(connection_string)
connection.start

channel = connection.create_channel
queue = channel.queue('hello')
exchange = channel.default_exchange



begin
    exchange.publish("Hello World!", routing_key: queue.name)
    channel.close
    connection.close
    end 

rescue => e
    puts e.inspect
    channel.close
    connection.close
    exit(0)
end

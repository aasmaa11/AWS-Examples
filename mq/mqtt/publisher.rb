require 'mqtt'

host = 'mqtts://admin:Testing1234...'
topic = 'test/topic'
message = "Hello World! MQTT"

begin
    MQTT:Client.connect(host) do |client|
    client.publish(topic, message)
end
rescue => e
    puts e.inspect
end
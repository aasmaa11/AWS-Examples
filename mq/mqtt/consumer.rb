require 'mqtt'

host = 'mqtts://admin:Testing1234...'
topic = 'test/topic'

begin
    MQTT:Client.connect(host) do |client|
    client.get(topic) do |topic, message|
        puts topic
        puts message
end
rescue => e
    puts e.inspect
end
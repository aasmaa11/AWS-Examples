require 'aws-sdk-sqs'

queue_url = "url"

client = Aws::SQS::Client.new
resp = client.send_message({
    queue_url: queue_url,
    message_body: "Hello Ruby!",
    delay_seconds: 1
    message_attributes: {
        "Fruit" => {
            string_value: "Apple",
            data_type: "String"
        }
    }

})
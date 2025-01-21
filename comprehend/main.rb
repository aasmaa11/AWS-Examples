require 'aws-sdk-comprehend'
require 'pry'

client = Aws::Comprehend::Client.new
text = "Hello World! Test with Comprehend"

reps = client.detect_sentiment({
    text: text,
    language_code: 'en'
})

binding.pry
puts resp.sentiment